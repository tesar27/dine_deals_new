import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/deal.dart';
import 'repository_providers.dart';
import 'city_provider.dart';

// Get active deals in selected city
final activeDealsProvider = FutureProvider<List<Deal>>((ref) async {
  final cityState = ref.watch(cityProvider);
  final repository = ref.watch(dealRepositoryProvider);

  return repository.getActiveDeals(
    cityId: cityState.selectedCity?.id,
    limit: 50,
  );
});

// Get trending deals
final trendingDealsProvider = FutureProvider<List<Deal>>((ref) async {
  final cityState = ref.watch(cityProvider);
  final repository = ref.watch(dealRepositoryProvider);

  return repository.getTrendingDeals(
    cityId: cityState.selectedCity?.id,
    limit: 10,
  );
});

// Get deal by ID
final dealProvider = FutureProvider.family<Deal?, String>((ref, id) async {
  final repository = ref.watch(dealRepositoryProvider);
  return repository.getDealById(id);
});

// Get deals for a specific restaurant
final restaurantDealsProvider = FutureProvider.family<List<Deal>, String>((
  ref,
  restaurantId,
) async {
  final repository = ref.watch(dealRepositoryProvider);
  return repository.getDealsByRestaurant(restaurantId);
});

// Search deals
final dealSearchProvider = FutureProvider.family<List<Deal>, String>((
  ref,
  query,
) async {
  if (query.isEmpty) return [];

  final cityState = ref.watch(cityProvider);
  final repository = ref.watch(dealRepositoryProvider);

  return repository.searchDeals(
    query: query,
    cityId: cityState.selectedCity?.id,
    limit: 20,
  );
});

// Get deals by category
final dealsByCategoryProvider = FutureProvider.family<List<Deal>, String>((
  ref,
  category,
) async {
  final cityState = ref.watch(cityProvider);
  final repository = ref.watch(dealRepositoryProvider);

  return repository.getDealsByCategory(
    category: category,
    cityId: cityState.selectedCity?.id,
    limit: 20,
  );
});

// Get expiring soon deals
final expiringSoonDealsProvider = FutureProvider<List<Deal>>((ref) async {
  final cityState = ref.watch(cityProvider);
  final repository = ref.watch(dealRepositoryProvider);

  return repository.getExpiringSoonDeals(
    cityId: cityState.selectedCity?.id,
    hoursUntilExpiry: 24,
    limit: 10,
  );
});
