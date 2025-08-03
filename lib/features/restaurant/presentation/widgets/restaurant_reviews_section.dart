import 'package:flutter/material.dart';

class RestaurantReviewsSection extends StatelessWidget {
  final String restaurantId;

  const RestaurantReviewsSection({super.key, required this.restaurantId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviews',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Navigate to all reviews
                },
                child: const Text('View All'),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Rating Summary
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Overall Rating
                Column(
                  children: [
                    Text(
                      '4.8',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          size: 16,
                          color: index < 4 ? Colors.amber : Colors.grey[300],
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '342 reviews',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(width: 24),

                // Rating Breakdown
                Expanded(
                  child: Column(
                    children: [
                      _buildRatingBar(context, 5, 0.7),
                      _buildRatingBar(context, 4, 0.2),
                      _buildRatingBar(context, 3, 0.1),
                      _buildRatingBar(context, 2, 0.0),
                      _buildRatingBar(context, 1, 0.0),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Recent Reviews
          ...List.generate(
            2,
            (index) => _buildReviewItem(context, _getReviews()[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingBar(BuildContext context, int stars, double percentage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text('$stars', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(width: 8),
          Icon(Icons.star, size: 12, color: Colors.amber),
          const SizedBox(width: 8),
          Expanded(
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewItem(BuildContext context, Map<String, dynamic> review) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Reviewer Info
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Text(
                  review['name'][0].toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review['name'],
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      review['date'],
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              // Star Rating
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    size: 16,
                    color:
                        index < review['rating']
                            ? Colors.amber
                            : Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Review Text
          Text(
            review['comment'],
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _getReviews() {
    return [
      {
        'name': 'Sarah Johnson',
        'date': '2 days ago',
        'rating': 5,
        'comment':
            'Absolutely fantastic dining experience! The Coq au Vin was perfectly prepared and the service was impeccable. Highly recommend for special occasions.',
      },
      {
        'name': 'Marco Weber',
        'date': '1 week ago',
        'rating': 4,
        'comment':
            'Great French cuisine in the heart of Zurich. The atmosphere is cozy and romantic. Only minor issue was the wait time, but the food made up for it.',
      },
    ];
  }
}
