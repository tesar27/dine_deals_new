import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/restaurant_model.dart';
import '../services/mock_data_service.dart';

class SearchState {
  final String query;
  final List<Restaurant> results;
  final bool isLoading;
  final bool isSearching;

  const SearchState({
    this.query = '',
    this.results = const [],
    this.isLoading = false,
    this.isSearching = false,
  });

  SearchState copyWith({
    String? query,
    List<Restaurant>? results,
    bool? isLoading,
    bool? isSearching,
  }) {
    return SearchState(
      query: query ?? this.query,
      results: results ?? this.results,
      isLoading: isLoading ?? this.isLoading,
      isSearching: isSearching ?? this.isSearching,
    );
  }
}

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(const SearchState());

  void startSearch() {
    state = state.copyWith(isSearching: true);
  }

  void stopSearch() {
    state = const SearchState();
  }

  void updateQuery(String query) {
    state = state.copyWith(query: query);
    if (query.isEmpty) {
      state = state.copyWith(results: []);
      return;
    }
    _performSearch(query);
  }

  void _performSearch(String query) {
    state = state.copyWith(isLoading: true);

    // Simulate search delay
    Future.delayed(const Duration(seconds: 1), () {
      final allRestaurants = MockDataService.getMockRestaurants();
      final results =
          allRestaurants.where((restaurant) {
            return restaurant.name.toLowerCase().contains(
                  query.toLowerCase(),
                ) ||
                restaurant.category.toLowerCase().contains(
                  query.toLowerCase(),
                ) ||
                restaurant.description.toLowerCase().contains(
                  query.toLowerCase(),
                ) ||
                restaurant.tags.any(
                  (tag) => tag.toLowerCase().contains(query.toLowerCase()),
                );
          }).toList();

      state = state.copyWith(results: results, isLoading: false);
    });
  }
}

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((
  ref,
) {
  return SearchNotifier();
});
