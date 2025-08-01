import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/city.dart';
import '../repositories/city_repository.dart';
import 'repository_providers.dart';

class CityState {
  final City? selectedCity;
  final bool isInitialized;

  const CityState({this.selectedCity, this.isInitialized = false});

  CityState copyWith({City? selectedCity, bool? isInitialized}) {
    return CityState(
      selectedCity: selectedCity ?? this.selectedCity,
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }
}

class CityNotifier extends StateNotifier<CityState> {
  CityNotifier(this._cityRepository) : super(const CityState());

  final CityRepository _cityRepository;

  void selectCity(City city) {
    state = state.copyWith(selectedCity: city, isInitialized: true);
  }

  void clearSelection() {
    state = const CityState();
  }

  Future<void> selectNearestCity(double latitude, double longitude) async {
    try {
      final city = await _cityRepository.getNearestCity(
        latitude: latitude,
        longitude: longitude,
      );
      if (city != null) {
        selectCity(city);
      }
    } catch (e) {
      // Handle error silently or with notification
    }
  }
}

final cityProvider = StateNotifierProvider<CityNotifier, CityState>((ref) {
  return CityNotifier(ref.watch(cityRepositoryProvider));
});

// Provider to get all cities
final citiesProvider = FutureProvider<List<City>>((ref) async {
  final repository = ref.watch(cityRepositoryProvider);
  return repository.getCities();
});

// Provider to get cities with deals
final citiesWithDealsProvider = FutureProvider<List<City>>((ref) async {
  final repository = ref.watch(cityRepositoryProvider);
  return repository.getCitiesWithDeals();
});

// Provider for city search
final citySearchProvider = FutureProvider.family<List<City>, String>((
  ref,
  query,
) async {
  if (query.isEmpty) return [];
  final repository = ref.watch(cityRepositoryProvider);
  return repository.searchCities(query);
});
