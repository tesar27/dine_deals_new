import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/restaurant.dart';
import '../models/deal.dart';
import 'repository_providers.dart';
import 'city_provider.dart';

// Get restaurants in selected city
final restaurantsProvider = FutureProvider<List<Restaurant>>((ref) async {
  final cityState = ref.watch(cityProvider);
  final repository = ref.watch(restaurantRepositoryProvider);

  return repository.getRestaurants(
    cityId: cityState.selectedCity?.id,
    limit: 50,
  );
});

// Get featured restaurants in selected city
final featuredRestaurantsProvider = FutureProvider<List<Restaurant>>((
  ref,
) async {
  final cityState = ref.watch(cityProvider);
  final repository = ref.watch(restaurantRepositoryProvider);

  return repository.getFeaturedRestaurants(
    cityId: cityState.selectedCity?.id,
    limit: 10,
  );
});

// Get restaurant by ID
final restaurantProvider = FutureProvider.family<Restaurant?, String>((
  ref,
  id,
) async {
  final repository = ref.watch(restaurantRepositoryProvider);
  return repository.getRestaurantById(id);
});

// Search restaurants
final restaurantSearchProvider =
    FutureProvider.family<List<Restaurant>, String>((ref, query) async {
      if (query.isEmpty) return [];

      final cityState = ref.watch(cityProvider);
      final repository = ref.watch(restaurantRepositoryProvider);

      return repository.searchRestaurants(
        query: query,
        cityId: cityState.selectedCity?.id,
        limit: 20,
      );
    });

// Get restaurants by location
final restaurantsByLocationProvider =
    FutureProvider.family<List<Restaurant>, Map<String, double>>((
      ref,
      coords,
    ) async {
      final repository = ref.watch(restaurantRepositoryProvider);

      return repository.getRestaurantsByLocation(
        latitude: coords['latitude']!,
        longitude: coords['longitude']!,
        radiusKm: coords['radius'] ?? 10.0,
        limit: 20,
      );
    });
