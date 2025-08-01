import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/city.dart';
import '../services/supabase_service.dart';

class CityRepository {
  final SupabaseClient _client = SupabaseService.client;

  // Get all cities
  Future<List<City>> getCities() async {
    try {
      final response = await _client
          .from('cities')
          .select()
          .order('name', ascending: true);

      return (response as List).map((json) => City.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch cities: $e');
    }
  }

  // Get city by ID
  Future<City?> getCityById(int id) async {
    try {
      final response =
          await _client.from('cities').select().eq('id', id).single();

      return City.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch city: $e');
    }
  }

  // Get city by name
  Future<City?> getCityByName(String name) async {
    try {
      final response =
          await _client.from('cities').select().ilike('name', name).single();

      return City.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  // Search cities
  Future<List<City>> searchCities(String query) async {
    try {
      final response = await _client
          .from('cities')
          .select()
          .or('name.ilike.%$query%,country.ilike.%$query%')
          .order('name', ascending: true)
          .limit(20);

      return (response as List).map((json) => City.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to search cities: $e');
    }
  }

  // Get cities by country
  Future<List<City>> getCitiesByCountry(String country) async {
    try {
      final response = await _client
          .from('cities')
          .select()
          .eq('country', country)
          .order('name', ascending: true);

      return (response as List).map((json) => City.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch cities by country: $e');
    }
  }

  // Get cities with deals (cities that have restaurants with active deals)
  Future<List<City>> getCitiesWithDeals() async {
    try {
      final response = await _client.rpc('get_cities_with_deals');

      return (response as List).map((json) => City.fromJson(json)).toList();
    } catch (e) {
      // Fallback to getting all cities if function doesn't exist
      return getCities();
    }
  }

  // Get nearest city by coordinates
  Future<City?> getNearestCity({
    required double latitude,
    required double longitude,
    double maxDistanceKm = 50.0,
  }) async {
    try {
      final response = await _client.rpc(
        'get_nearest_city',
        params: {
          'lat': latitude,
          'lng': longitude,
          'max_distance_km': maxDistanceKm,
        },
      );

      if (response != null && response is Map<String, dynamic>) {
        return City.fromJson(response);
      }
      return null;
    } catch (e) {
      // Fallback to simple query if function doesn't exist
      final cities = await getCities();
      if (cities.isEmpty) return null;

      // Simple distance calculation fallback
      City? nearest;
      double? minDistance;

      for (final city in cities) {
        if (city.latitude != null && city.longitude != null) {
          final distance = _calculateDistance(
            latitude,
            longitude,
            city.latitude!,
            city.longitude!,
          );

          if (distance <= maxDistanceKm &&
              (minDistance == null || distance < minDistance)) {
            minDistance = distance;
            nearest = city;
          }
        }
      }

      return nearest;
    }
  }

  // Simple distance calculation (Haversine formula approximation)
  double _calculateDistance(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    const double earthRadius = 6371; // km
    final double dLat = _toRadians(lat2 - lat1);
    final double dLon = _toRadians(lon2 - lon1);
    final double a =
        0.5 -
        (lat1 * lat1 + lat2 * lat2) / 2 +
        (1 - dLat * dLat / 2) * (1 - dLon * dLon / 2);
    return earthRadius * 2 * (a < 0 ? 0 : (a > 1 ? 1 : a));
  }

  double _toRadians(double degrees) {
    return degrees * (3.14159265359 / 180);
  }
}
