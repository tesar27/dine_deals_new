import 'package:geolocator/geolocator.dart';
import '../models/city.dart';
import '../repositories/city_repository.dart';

class LocationService {
  static final LocationService _instance = LocationService._internal();
  factory LocationService() => _instance;
  LocationService._internal();

  /// Check if location services are enabled
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  /// Check current permission status
  Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  /// Request location permission
  Future<LocationPermission> requestPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    
    return permission;
  }

  /// Get current position
  Future<Position?> getCurrentPosition() async {
    // Check if location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled');
    }

    // Check and request permission
    LocationPermission permission = await checkPermission();
    
    if (permission == LocationPermission.denied) {
      permission = await requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }
    
    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied');
    }

    // Get position
    try {
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      );
    } catch (e) {
      throw Exception('Failed to get location: $e');
    }
  }

  /// Find the nearest city from user's current location
  Future<City?> findNearestCity(CityRepository cityRepository) async {
    try {
      final position = await getCurrentPosition();
      if (position == null) return null;

      return await cityRepository.getNearestCity(
        latitude: position.latitude,
        longitude: position.longitude,
        maxDistanceKm: 50.0, // 50km radius
      );
    } catch (e) {
      print('Error finding nearest city: $e');
      return null;
    }
  }

  /// Check if user is within any city's boundaries (rough check)
  Future<bool> isUserInKnownCity(CityRepository cityRepository) async {
    final nearestCity = await findNearestCity(cityRepository);
    return nearestCity != null;
  }

  /// Open app settings for location permissions
  Future<void> openAppSettings() async {
    await Geolocator.openAppSettings();
  }

  /// Open location settings
  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }
}
