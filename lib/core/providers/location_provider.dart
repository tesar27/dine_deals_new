import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import '../models/city.dart';
import '../services/location_service.dart';
import '../repositories/city_repository.dart';
import 'repository_providers.dart';
import 'city_provider.dart';

enum LocationStatus {
  initial,
  requesting,
  granted,
  denied,
  deniedForever,
  serviceDisabled,
  error,
}

class LocationState {
  final LocationStatus status;
  final Position? currentPosition;
  final String? errorMessage;

  const LocationState({
    this.status = LocationStatus.initial,
    this.currentPosition,
    this.errorMessage,
  });

  LocationState copyWith({
    LocationStatus? status,
    Position? currentPosition,
    String? errorMessage,
  }) {
    return LocationState(
      status: status ?? this.status,
      currentPosition: currentPosition ?? this.currentPosition,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class LocationNotifier extends StateNotifier<LocationState> {
  LocationNotifier(this._locationService, this._cityRepository)
    : super(const LocationState());

  final LocationService _locationService;
  final CityRepository _cityRepository;

  /// Request location permission and get current position
  Future<void> requestLocationAndSelectCity(WidgetRef ref) async {
    state = state.copyWith(status: LocationStatus.requesting);

    try {
      final position = await _locationService.getCurrentPosition();
      if (position != null) {
        state = state.copyWith(
          status: LocationStatus.granted,
          currentPosition: position,
        );

        // Try to find and select nearest city
        final nearestCity = await _locationService.findNearestCity(
          _cityRepository,
        );
        if (nearestCity != null) {
          ref.read(cityProvider.notifier).selectCity(nearestCity);
        }
      }
    } catch (e) {
      String errorMessage = e.toString();
      LocationStatus status = LocationStatus.error;

      if (errorMessage.contains('denied')) {
        status = LocationStatus.denied;
      } else if (errorMessage.contains('permanently denied')) {
        status = LocationStatus.deniedForever;
      } else if (errorMessage.contains('disabled')) {
        status = LocationStatus.serviceDisabled;
      }

      state = state.copyWith(status: status, errorMessage: errorMessage);
    }
  }

  /// Get current position without city selection
  Future<void> getCurrentPosition() async {
    state = state.copyWith(status: LocationStatus.requesting);

    try {
      final position = await _locationService.getCurrentPosition();
      if (position != null) {
        state = state.copyWith(
          status: LocationStatus.granted,
          currentPosition: position,
        );
      }
    } catch (e) {
      String errorMessage = e.toString();
      LocationStatus status = LocationStatus.error;

      if (errorMessage.contains('denied')) {
        status = LocationStatus.denied;
      } else if (errorMessage.contains('permanently denied')) {
        status = LocationStatus.deniedForever;
      } else if (errorMessage.contains('disabled')) {
        status = LocationStatus.serviceDisabled;
      }

      state = state.copyWith(status: status, errorMessage: errorMessage);
    }
  }

  /// Find nearest city without auto-selecting
  Future<City?> findNearestCity() async {
    try {
      return await _locationService.findNearestCity(_cityRepository);
    } catch (e) {
      return null;
    }
  }

  /// Reset location state
  void resetState() {
    state = const LocationState();
  }

  /// Open app settings for permissions
  Future<void> openAppSettings() async {
    await _locationService.openAppSettings();
  }

  /// Open location settings
  Future<void> openLocationSettings() async {
    await _locationService.openLocationSettings();
  }
}

// Location service provider
final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});

// Location state provider
final locationProvider = StateNotifierProvider<LocationNotifier, LocationState>(
  (ref) {
    return LocationNotifier(
      ref.watch(locationServiceProvider),
      ref.watch(cityRepositoryProvider),
    );
  },
);

// Provider to get nearest city
final nearestCityProvider = FutureProvider<City?>((ref) async {
  final locationNotifier = ref.watch(locationProvider.notifier);
  return await locationNotifier.findNearestCity();
});
