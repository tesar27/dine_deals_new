import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/services/mock_data_service.dart';
import '../../../../shared/widgets/restaurant_card.dart';
import '../../../../shared/widgets/category_chip.dart';
import '../../../../shared/widgets/search_bar_widget.dart';
import '../../../../shared/widgets/location_header.dart';
import '../../../../shared/widgets/promotion_banner.dart';

class DiscoveryPage extends ConsumerStatefulWidget {
  const DiscoveryPage({super.key});

  @override
  ConsumerState<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends ConsumerState<DiscoveryPage> {
  final ScrollController _scrollController = ScrollController();
  String _selectedCategory = 'All';

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final restaurants = MockDataService.getMockRestaurants();
    final promotedRestaurants = MockDataService.getPromotedRestaurants();
    final categories = MockDataService.getCategories();
    final filteredRestaurants =
        _selectedCategory == 'All'
            ? restaurants
            : MockDataService.getRestaurantsByCategory(_selectedCategory);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // App Bar with Location
          SliverAppBar(
            expandedHeight: 120,
            floating: true,
            pinned: true,
            backgroundColor: Theme.of(context).colorScheme.surface,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
                child: const LocationHeader(),
              ),
            ),
          ),

          // Search Bar
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SearchBarWidget(
                onSearch: (query) {
                  // TODO: Implement search functionality
                  print('Searching for: $query');
                },
              ),
            ),
          ),

          // Promotion Banner
          if (promotedRestaurants.isNotEmpty)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PromotionBanner(restaurants: promotedRestaurants),
              ),
            ),

          // Categories
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CategoryChip(
                      label: category,
                      isSelected: _selectedCategory == category,
                      onTap: () {
                        setState(() {
                          _selectedCategory = category;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),

          // Section Header
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedCategory == 'All'
                        ? 'Nearby Restaurants'
                        : '$_selectedCategory Restaurants',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: Navigate to restaurants page with filter
                    },
                    child: const Text('See all'),
                  ),
                ],
              ),
            ),
          ),

          // Restaurants List
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final restaurant = filteredRestaurants[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: RestaurantCard(
                    restaurant: restaurant,
                    onTap: () {
                      // TODO: Navigate to restaurant detail
                      print('Tapped restaurant: ${restaurant.name}');
                    },
                  ),
                );
              }, childCount: filteredRestaurants.length),
            ),
          ),

          // Bottom spacing for navigation bar
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }
}
