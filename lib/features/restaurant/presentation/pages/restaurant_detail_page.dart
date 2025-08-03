import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/models/restaurant.dart';
import '../../../../core/providers/deal_providers.dart';
import '../../../../shared/widgets/deal_card.dart';
import '../widgets/restaurant_info_section.dart';
import '../widgets/restaurant_reviews_section.dart';
import '../widgets/restaurant_menu_section.dart';

class RestaurantDetailPage extends ConsumerWidget {
  final String restaurantId;

  const RestaurantDetailPage({super.key, required this.restaurantId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // For now, we'll use mock data. Later this can be fetched from Supabase
    final restaurant = _getMockRestaurant();
    final dealsAsync = ref.watch(restaurantDealsProvider(restaurantId));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Image with App Bar
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.transparent,
            leading: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => context.pop(),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {
                    // TODO: Implement favorite functionality
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon: const Icon(Icons.share, color: Colors.white),
                  onPressed: () {
                    // TODO: Implement share functionality
                  },
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Restaurant Image
                  CachedNetworkImage(
                    imageUrl: restaurant.imageUrl ?? '',
                    fit: BoxFit.cover,
                    placeholder:
                        (context, url) => Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                    errorWidget:
                        (context, url, error) => Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.restaurant, size: 64),
                        ),
                  ),
                  // Gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                        ],
                        stops: const [0.7, 1.0],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Restaurant Content
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Restaurant Basic Info
                  RestaurantInfoSection(restaurant: restaurant),

                  const SizedBox(height: 24),

                  // Current Deals Section
                  if (dealsAsync.hasValue && dealsAsync.value!.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Current Deals',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: dealsAsync.value!.length,
                        itemBuilder: (context, index) {
                          final deal = dealsAsync.value![index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: SizedBox(
                              width: 300,
                              child: DealCard(deal: deal),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Menu Section
                  RestaurantMenuSection(restaurantId: restaurantId),

                  const SizedBox(height: 24),

                  // Reviews Section
                  RestaurantReviewsSection(restaurantId: restaurantId),

                  const SizedBox(
                    height: 100,
                  ), // Bottom padding for floating button
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: FloatingActionButton.extended(
          onPressed: () {
            // TODO: Navigate to booking page
            context.push('/restaurant/$restaurantId/book');
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          label: const Text(
            'Reserve Table',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          icon: const Icon(Icons.restaurant_menu),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // Mock data for now - replace with actual data fetching
  Restaurant _getMockRestaurant() {
    return Restaurant(
      id: restaurantId,
      name: 'Bistro Paradis',
      description:
          'Experience the finest French cuisine in the heart of Zurich. Our chef combines traditional techniques with modern presentation to create unforgettable dining experiences.',
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-4.0.3',
      address: 'Bahnhofstrasse 45, 8001 Zürich, Switzerland',
      latitude: 47.3769,
      longitude: 8.5417,
      cityId: 1,
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      tags: ['French', 'Fine Dining', 'Romantic', 'Wine'],
    );
  }
}
