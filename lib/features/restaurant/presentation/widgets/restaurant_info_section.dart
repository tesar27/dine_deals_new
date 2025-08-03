import 'package:flutter/material.dart';
import '../../../../core/models/restaurant.dart';

class RestaurantInfoSection extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantInfoSection({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Restaurant Name - Big and Bold
          Text(
            restaurant.name,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 12),

          // Category and City in one line with divider
          Row(
            children: [
              // Get category from tags or use a default
              Text(
                restaurant.tags?.isNotEmpty == true
                    ? restaurant.tags!.first
                    : 'Restaurant',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                width: 1,
                height: 16,
                color: Colors.grey[400],
              ),
              // Extract city from address (take the part after the comma)
              Text(
                _extractCity(restaurant.address),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Rating and Opening time in two columns with divider
          Row(
            children: [
              // Rating column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rating',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[500],
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    if (restaurant.rating != null) ...[
                      Row(
                        children: [
                          Icon(Icons.star, size: 18, color: Colors.amber[600]),
                          const SizedBox(width: 4),
                          Text(
                            restaurant.rating!.toStringAsFixed(1),
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ] else ...[
                      Text(
                        'No rating',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              // Vertical divider
              Container(
                width: 1,
                height: 40,
                color: Colors.grey[300],
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),

              // Opening time column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hours',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[500],
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Mon-Sat: 6:00 PM - 11:00 PM',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Three buttons row: Menu (75%), Heart, Share
          Row(
            children: [
              // Menu button - 75% width
              Expanded(
                flex: 3,
                child: Container(
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {
                      _showMenuModal(context);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black87,
                      side: BorderSide(color: Colors.grey[300]!),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Heart button
              Container(
                width: 48,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {
                    _toggleFavorite(context);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.red,
                    side: BorderSide(color: Colors.grey[300]!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Icon(Icons.favorite_border, size: 20),
                ),
              ),
              const SizedBox(width: 12),

              // Share button
              Container(
                width: 48,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {
                    _shareRestaurant(context);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    side: BorderSide(color: Colors.grey[300]!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Icon(Icons.share, size: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _extractCity(String address) {
    // Extract city from address (usually after comma)
    final parts = address.split(',');
    if (parts.length > 1) {
      return parts[1].trim();
    }
    return address; // Return full address if no comma found
  }

  void _showMenuModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              children: [
                // Handle
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                // Header
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Menu',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.close),
                      ),
                    ],
                  ),
                ),

                // Menu content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Menu items list
                        ...List.generate(
                          5,
                          (index) => Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    color: Colors.grey[200],
                                    child: Icon(Icons.restaurant_menu),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Menu Item ${index + 1}',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleMedium?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Delicious menu item description',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(color: Colors.grey[600]),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'CHF ${(15 + index * 5)}',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleMedium?.copyWith(
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  void _toggleFavorite(BuildContext context) {
    // TODO: Implement favorite functionality
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added to favorites!'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _shareRestaurant(BuildContext context) {
    // TODO: Implement native share functionality
    // For now, show a simple dialog
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Share Restaurant'),
            content: Text(
              'Share functionality will be implemented with native sharing.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
    );
  }
}
