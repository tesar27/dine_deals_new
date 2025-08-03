import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseService {
  static final SupabaseService _instance = SupabaseService._internal();
  factory SupabaseService() => _instance;
  SupabaseService._internal();

  static SupabaseClient get client => Supabase.instance.client;

  // Initialize Supabase
  static Future<void> initialize() async {
    final supabaseUrl = dotenv.env['SUPABASE_URL'];
    final supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY'];

    if (supabaseUrl == null || supabaseAnonKey == null) {
      print('Warning: Supabase environment variables not found');
      print(
        'Please ensure SUPABASE_URL and SUPABASE_ANON_KEY are set in .env file',
      );
      // Use dummy values for development
      await Supabase.initialize(
        url: 'https://dummy.supabase.co',
        anonKey: 'dummy_key',
      );
      return;
    }

    await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  }

  // Authentication methods
  Future<AuthResponse> signUp({
    required String email,
    required String password,
    String? firstName,
    String? lastName,
  }) async {
    final response = await client.auth.signUp(
      email: email,
      password: password,
      data: {'first_name': firstName, 'last_name': lastName},
    );
    return response;
  }

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    final response = await client.auth.signInWithPassword(
      email: email,
      password: password,
    );
    return response;
  }

  Future<void> signOut() async {
    await client.auth.signOut();
  }

  // Get current user
  User? get currentUser => client.auth.currentUser;

  // Stream of auth state changes
  Stream<AuthState> get authStateChanges => client.auth.onAuthStateChange;

  // Database operations
  Future<List<Map<String, dynamic>>> getRestaurants({
    String? city,
    String? category,
    double? latitude,
    double? longitude,
    double? radiusKm,
  }) async {
    var query = client.from('restaurants').select('''
      *,
      menu_items:menu_items(*)
    ''');

    if (city != null) {
      query = query.eq('city', city);
    }

    if (category != null) {
      query = query.eq('category', category);
    }

    // Add location-based filtering if coordinates provided
    if (latitude != null && longitude != null && radiusKm != null) {
      // Using PostGIS functions for location-based queries
      // This would require proper database setup with location columns
      final response = await client.rpc(
        'nearby_restaurants',
        params: {'lat': latitude, 'lng': longitude, 'radius_km': radiusKm},
      );
      return response;
    }

    final response = await query;
    return response;
  }

  Future<Map<String, dynamic>?> getRestaurantById(String id) async {
    final response =
        await client
            .from('restaurants')
            .select('''
      *,
      menu_items:menu_items(*)
    ''')
            .eq('id', id)
            .maybeSingle();

    return response;
  }

  Future<List<Map<String, dynamic>>> getUserOrders(String userId) async {
    final response = await client
        .from('orders')
        .select('''
      *,
      restaurant:restaurants(name, image_url),
      order_items:order_items(
        *,
        menu_item:menu_items(name, price)
      )
    ''')
        .eq('user_id', userId)
        .order('created_at', ascending: false);

    return response;
  }

  Future<Map<String, dynamic>> createOrder({
    required String userId,
    required String restaurantId,
    required List<Map<String, dynamic>> items,
    required String deliveryAddressId,
    String? specialInstructions,
  }) async {
    final response =
        await client
            .from('orders')
            .insert({
              'user_id': userId,
              'restaurant_id': restaurantId,
              'delivery_address_id': deliveryAddressId,
              'special_instructions': specialInstructions,
              'status': 'placed',
              'created_at': DateTime.now().toIso8601String(),
            })
            .select()
            .single();

    // Insert order items
    final orderItems =
        items
            .map(
              (item) => {
                'order_id': response['id'],
                'menu_item_id': item['menu_item_id'],
                'quantity': item['quantity'],
                'price': item['price'],
                'choices': item['choices'],
                'special_instructions': item['special_instructions'],
              },
            )
            .toList();

    await client.from('order_items').insert(orderItems);

    return response;
  }

  Future<List<Map<String, dynamic>>> getUserAddresses(String userId) async {
    final response = await client
        .from('addresses')
        .select()
        .eq('user_id', userId);
    return response;
  }

  Future<Map<String, dynamic>> addUserAddress({
    required String userId,
    required String street,
    required String city,
    required String postalCode,
    required String country,
    required double latitude,
    required double longitude,
    String? apartmentNumber,
    String? label,
    String? deliveryInstructions,
  }) async {
    final response =
        await client
            .from('addresses')
            .insert({
              'user_id': userId,
              'street': street,
              'city': city,
              'postal_code': postalCode,
              'country': country,
              'latitude': latitude,
              'longitude': longitude,
              'apartment_number': apartmentNumber,
              'label': label,
              'delivery_instructions': deliveryInstructions,
            })
            .select()
            .single();

    return response;
  }

  // Real-time subscriptions
  Stream<List<Map<String, dynamic>>> subscribeToOrderUpdates(String orderId) {
    return client.from('orders').stream(primaryKey: ['id']).eq('id', orderId);
  }
}

// Convenience getter for accessing Supabase client
SupabaseClient get supabase => Supabase.instance.client;
