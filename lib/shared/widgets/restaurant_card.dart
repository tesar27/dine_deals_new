import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../../core/models/restaurant_model.dart';
import '../../core/constants/app_constants.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final VoidCallback? onTap;

  const RestaurantCard({super.key, required this.restaurant, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: InkWell(
        onTap:
            onTap ??
            () {
              context.push('/restaurant/${restaurant.id}');
            },
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Restaurant Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppConstants.borderRadius),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: restaurant.imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder:
                        (context, url) => Container(
                          height: 200,
                          color: Colors.grey[300],
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                    errorWidget:
                        (context, url, error) => Container(
                          height: 200,
                          color: Colors.grey[300],
                          child: const Icon(Icons.error),
                        ),
                  ),
                ),

                // Promotion Badge
                if (restaurant.isPromoted && restaurant.promoText != null)
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        restaurant.promoText!,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                // Delivery Time Badge
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      restaurant.deliveryTime,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Restaurant Info
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name and Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          restaurant.name,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, size: 16, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text(
                            restaurant.rating.toString(),
                            style: Theme.of(context).textTheme.labelMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            ' (${restaurant.reviewCount})',
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall?.copyWith(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurface.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 4),

                  // Category and Tags
                  Text(
                    restaurant.category,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Description
                  Text(
                    restaurant.description,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withOpacity(0.7),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 12),

                  // Delivery Info
                  Row(
                    children: [
                      Icon(
                        Icons.delivery_dining,
                        size: 16,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withOpacity(0.6),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'CHF ${restaurant.deliveryFee.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.shopping_cart,
                        size: 16,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withOpacity(0.6),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Min CHF ${restaurant.minimumOrder.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const Spacer(),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: restaurant.isOpen ? Colors.green : Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        restaurant.isOpen ? 'Open' : 'Closed',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: restaurant.isOpen ? Colors.green : Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
