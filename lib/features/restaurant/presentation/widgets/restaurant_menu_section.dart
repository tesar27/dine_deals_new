import 'package:flutter/material.dart';

class RestaurantMenuSection extends StatelessWidget {
  final String restaurantId;

  const RestaurantMenuSection({super.key, required this.restaurantId});

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
                'Menu Highlights',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Navigate to full menu
                },
                child: const Text('View All'),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Menu Items List
          ...List.generate(
            3,
            (index) => _buildMenuItem(
              context,
              _getMenuItems()[index]['name']!,
              _getMenuItems()[index]['description']!,
              _getMenuItems()[index]['price']!,
              _getMenuItems()[index]['image']!,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    String name,
    String description,
    String price,
    String imageUrl,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          // Menu Item Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) => Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey[300],
                    child: const Icon(Icons.restaurant_menu),
                  ),
            ),
          ),
          const SizedBox(width: 16),

          // Menu Item Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Add Button
          IconButton(
            onPressed: () {
              // TODO: Add to order
            },
            icon: Icon(
              Icons.add_circle,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, String>> _getMenuItems() {
    return [
      {
        'name': 'Coq au Vin',
        'description':
            'Traditional French chicken braised in red wine with mushrooms and pearl onions',
        'price': 'CHF 38',
        'image':
            'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?ixlib=rb-4.0.3',
      },
      {
        'name': 'Bouillabaisse',
        'description':
            'Classic Provençal fish stew with saffron, fennel, and fresh herbs',
        'price': 'CHF 42',
        'image':
            'https://images.unsplash.com/photo-1563379091339-03246963d29c?ixlib=rb-4.0.3',
      },
      {
        'name': 'Crème Brûlée',
        'description':
            'Vanilla custard topped with caramelized sugar, served with fresh berries',
        'price': 'CHF 16',
        'image':
            'https://images.unsplash.com/photo-1571115764595-644a1f56a55c?ixlib=rb-4.0.3',
      },
    ];
  }
}
