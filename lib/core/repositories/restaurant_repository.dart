import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/restaurant.dart';
import '../models/deal.dart';
import '../services/supabase_service.dart';

class RestaurantRepository {
  final SupabaseClient _client = SupabaseService.client;

  // Get all restaurants
  Future<List<Restaurant>> getRestaurants({
    int? cityId,
    List<String>? tags,
    double? minRating,
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      var query = _client.from('restaurants').select().eq('is_active', true);

      if (cityId != null) {
        query = query.eq('city_id', cityId);
      }

      if (minRating != null) {
        query = query.gte('rating', minRating);
      }

      final response = await query.range(offset, offset + limit - 1);

      return (response as List)
          .map((json) => Restaurant.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch restaurants: $e');
    }
  }

  // Get restaurant by ID
  Future<Restaurant?> getRestaurantById(String id) async {
    try {
      final response =
          await _client.from('restaurants').select().eq('id', id).single();

      return Restaurant.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch restaurant: $e');
    }
  }

  // Get restaurants by location (within radius)
  Future<List<Restaurant>> getRestaurantsByLocation({
    required double latitude,
    required double longitude,
    double radiusKm = 10.0,
    int limit = 20,
  }) async {
    try {
      // Using PostGIS functions for location-based queries
      final response = await _client.rpc(
        'restaurants_within_radius',
        params: {
          'lat': latitude,
          'lng': longitude,
          'radius_km': radiusKm,
          'result_limit': limit,
        },
      );

      return (response as List)
          .map((json) => Restaurant.fromJson(json))
          .toList();
    } catch (e) {
      // Fallback to basic query if function doesn't exist
      return getRestaurants(limit: limit);
    }
  }

  // Get deals for a restaurant
  Future<List<Deal>> getRestaurantDeals(String restaurantId) async {
    try {
      final response = await _client
          .from('deals')
          .select()
          .eq('restaurant_id', restaurantId)
          .eq('is_active', true)
          .gte('valid_until', DateTime.now().toIso8601String());

      return (response as List).map((json) => Deal.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch restaurant deals: $e');
    }
  }

  // Search restaurants
  Future<List<Restaurant>> searchRestaurants({
    required String query,
    int? cityId,
    int limit = 20,
  }) async {
    try {
      var supabaseQuery = _client
          .from('restaurants')
          .select()
          .eq('is_active', true)
          .or(
            'name.ilike.%$query%,description.ilike.%$query%,tags.cs.{$query}',
          );

      if (cityId != null) {
        supabaseQuery = supabaseQuery.eq('city_id', cityId);
      }

      final response = await supabaseQuery.limit(limit);

      return (response as List)
          .map((json) => Restaurant.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to search restaurants: $e');
    }
  }

  // Get featured restaurants
  Future<List<Restaurant>> getFeaturedRestaurants({
    int? cityId,
    int limit = 10,
  }) async {
    try {
      var query = _client
          .from('restaurants')
          .select()
          .eq('is_active', true)
          .gte('rating', 4.0);

      if (cityId != null) {
        query = query.eq('city_id', cityId);
      }

      final response = await query
          .order('rating', ascending: false)
          .limit(limit);

      return (response as List)
          .map((json) => Restaurant.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch featured restaurants: $e');
    }
  }
}
