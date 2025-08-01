import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/deal.dart';
import '../services/supabase_service.dart';

class DealRepository {
  final SupabaseClient _client = SupabaseService.client;

  // Get all active deals
  Future<List<Deal>> getActiveDeals({
    int? cityId,
    String? restaurantId,
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      var query = _client
          .from('deals')
          .select('*, restaurants!inner(*)')
          .eq('is_active', true)
          .gte('valid_until', DateTime.now().toIso8601String());

      if (cityId != null) {
        query = query.eq('restaurants.city_id', cityId);
      }

      if (restaurantId != null) {
        query = query.eq('restaurant_id', restaurantId);
      }

      final response = await query
          .order('created_at', ascending: false)
          .range(offset, offset + limit - 1);

      return (response as List).map((json) => Deal.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch deals: $e');
    }
  }

  // Get deal by ID
  Future<Deal?> getDealById(String id) async {
    try {
      final response =
          await _client.from('deals').select().eq('id', id).single();

      return Deal.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch deal: $e');
    }
  }

  // Get deals for a specific restaurant
  Future<List<Deal>> getDealsByRestaurant(String restaurantId) async {
    try {
      final response = await _client
          .from('deals')
          .select()
          .eq('restaurant_id', restaurantId)
          .eq('is_active', true)
          .gte('valid_until', DateTime.now().toIso8601String())
          .order('created_at', ascending: false);

      return (response as List).map((json) => Deal.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch restaurant deals: $e');
    }
  }

  // Get trending deals (most booked recently)
  Future<List<Deal>> getTrendingDeals({int? cityId, int limit = 10}) async {
    try {
      // This would require a more complex query joining with bookings
      // For now, return recent deals with high savings
      var query = _client
          .from('deals')
          .select('*, restaurants!inner(*)')
          .eq('is_active', true)
          .gte('valid_until', DateTime.now().toIso8601String())
          .gte('savings', 50);

      if (cityId != null) {
        query = query.eq('restaurants.city_id', cityId);
      }

      final response = await query
          .order('savings', ascending: false)
          .limit(limit);

      return (response as List).map((json) => Deal.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch trending deals: $e');
    }
  }

  // Search deals
  Future<List<Deal>> searchDeals({
    required String query,
    int? cityId,
    int limit = 20,
  }) async {
    try {
      var supabaseQuery = _client
          .from('deals')
          .select('*, restaurants!inner(*)')
          .eq('is_active', true)
          .gte('valid_until', DateTime.now().toIso8601String())
          .or('name.ilike.%$query%,description.ilike.%$query%');

      if (cityId != null) {
        supabaseQuery = supabaseQuery.eq('restaurants.city_id', cityId);
      }

      final response = await supabaseQuery
          .order('created_at', ascending: false)
          .limit(limit);

      return (response as List).map((json) => Deal.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to search deals: $e');
    }
  }

  // Get deals by category (would need a junction table in real app)
  Future<List<Deal>> getDealsByCategory({
    required String category,
    int? cityId,
    int limit = 20,
  }) async {
    try {
      var query = _client
          .from('deals')
          .select('*, restaurants!inner(*)')
          .eq('is_active', true)
          .gte('valid_until', DateTime.now().toIso8601String())
          .contains('restaurants.tags', [category]);

      if (cityId != null) {
        query = query.eq('restaurants.city_id', cityId);
      }

      final response = await query
          .order('created_at', ascending: false)
          .limit(limit);

      return (response as List).map((json) => Deal.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch category deals: $e');
    }
  }

  // Get expiring soon deals
  Future<List<Deal>> getExpiringSoonDeals({
    int? cityId,
    int hoursUntilExpiry = 24,
    int limit = 10,
  }) async {
    try {
      final expiryThreshold = DateTime.now().add(
        Duration(hours: hoursUntilExpiry),
      );

      var query = _client
          .from('deals')
          .select('*, restaurants!inner(*)')
          .eq('is_active', true)
          .gte('valid_until', DateTime.now().toIso8601String())
          .lte('valid_until', expiryThreshold.toIso8601String());

      if (cityId != null) {
        query = query.eq('restaurants.city_id', cityId);
      }

      final response = await query
          .order('valid_until', ascending: true)
          .limit(limit);

      return (response as List).map((json) => Deal.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch expiring deals: $e');
    }
  }
}
