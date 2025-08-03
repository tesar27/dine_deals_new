import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/services/mock_data_service.dart';
import '../../../../core/providers/city_provider.dart';
import '../../../../core/providers/search_provider.dart';
import '../../../../shared/widgets/restaurant_card.dart';
import '../../../../shared/widgets/shared_top_bar.dart';
import '../../../../shared/widgets/search_overlay.dart';
import '../../../../shared/widgets/promotion_banner.dart';
import '../../../city_selection/city_selection_screen.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cityState = ref.watch(cityProvider);
    final searchState = ref.watch(searchProvider);

    // Show search overlay if searching
    if (searchState.isSearching) {
      return const SearchOverlay();
    }

    // Show city selection if no city is selected
    if (!cityState.isInitialized || cityState.selectedCity == null) {
      return const CitySelectionScreen();
    }

    final restaurants = MockDataService.getMockRestaurants();
    final promotedRestaurants = MockDataService.getPromotedRestaurants();
    final nearbyRestaurants = restaurants.take(5).toList();
    final popularRestaurants =
        restaurants.where((r) => r.rating >= 4.5).toList();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const SharedTopBar(showSearchIcon: true),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // Welcome Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Evening',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'What are you craving today?',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Quick Actions (similar to NeoTaste)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick Actions',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _buildQuickActionCard(
                        context,
                        'Order Again',
                        Icons.refresh,
                        Colors.blue,
                      ),
                      const SizedBox(width: 12),
                      _buildQuickActionCard(
                        context,
                        'Favorites',
                        Icons.favorite,
                        Colors.red,
                      ),
                      const SizedBox(width: 12),
                      _buildQuickActionCard(
                        context,
                        'Offers',
                        Icons.local_offer,
                        Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Promotion Banner
          if (promotedRestaurants.isNotEmpty)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special Offers',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    PromotionBanner(restaurants: promotedRestaurants),
                  ],
                ),
              ),
            ),

          // Nearby Restaurants Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Restaurants',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to discover tab
                    },
                    child: const Text('See all'),
                  ),
                ],
              ),
            ),
          ),

          // Nearby Restaurants Horizontal List
          SliverToBoxAdapter(
            child: SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: nearbyRestaurants.length,
                itemBuilder: (context, index) {
                  final restaurant = nearbyRestaurants[index];
                  return Container(
                    width: 280,
                    margin: const EdgeInsets.only(right: 16),
                    child: RestaurantCard(restaurant: restaurant),
                  );
                },
              ),
            ),
          ),

          // Popular Restaurants Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
              child: Text(
                'Popular This Week',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // Popular Restaurants List
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final restaurant = popularRestaurants[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: RestaurantCard(restaurant: restaurant),
                );
              }, childCount: popularRestaurants.length),
            ),
          ),

          // Bottom spacing for navigation bar
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    );
  }

  Widget _buildQuickActionCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
  ) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.3), width: 1),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              print('Tapped: $title');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: color, size: 24),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
