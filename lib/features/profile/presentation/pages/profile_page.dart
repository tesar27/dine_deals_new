import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/widgets/profile_menu_item.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            backgroundColor: Theme.of(context).colorScheme.primary,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      // Profile Avatar
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),

                      const SizedBox(height: 12),

                      // User Name
                      Text(
                        'John Doe',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 4),

                      // User Email
                      Text(
                        'john.doe@example.com',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Profile Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Quick Actions
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildQuickAction(
                            context,
                            icon: Icons.favorite,
                            label: 'Favorites',
                            count: '12',
                            onTap: () {},
                          ),
                          _buildQuickAction(
                            context,
                            icon: Icons.history,
                            label: 'Orders',
                            count: '24',
                            onTap: () {},
                          ),
                          _buildQuickAction(
                            context,
                            icon: Icons.location_on,
                            label: 'Addresses',
                            count: '3',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Account Section
                  Text(
                    'Account',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Card(
                    child: Column(
                      children: [
                        ProfileMenuItem(
                          icon: Icons.person_outline,
                          title: 'Personal Information',
                          subtitle: 'Update your profile details',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        ProfileMenuItem(
                          icon: Icons.location_on_outlined,
                          title: 'Delivery Addresses',
                          subtitle: 'Manage your delivery locations',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        ProfileMenuItem(
                          icon: Icons.payment_outlined,
                          title: 'Payment Methods',
                          subtitle: 'Add or remove payment options',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Orders Section
                  Text(
                    'Orders',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Card(
                    child: Column(
                      children: [
                        ProfileMenuItem(
                          icon: Icons.receipt_long_outlined,
                          title: 'Order History',
                          subtitle: 'View your past orders',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        ProfileMenuItem(
                          icon: Icons.favorite_outline,
                          title: 'Favorite Restaurants',
                          subtitle: 'Your saved restaurants',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Preferences Section
                  Text(
                    'Preferences',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Card(
                    child: Column(
                      children: [
                        ProfileMenuItem(
                          icon: Icons.notifications_outlined,
                          title: 'Notifications',
                          subtitle: 'Manage notification settings',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        ProfileMenuItem(
                          icon: Icons.language_outlined,
                          title: 'Language & Region',
                          subtitle: 'Change app language and currency',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        ProfileMenuItem(
                          icon: Icons.restaurant_menu_outlined,
                          title: 'Dietary Preferences',
                          subtitle: 'Set dietary restrictions and allergens',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Support Section
                  Text(
                    'Support',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Card(
                    child: Column(
                      children: [
                        ProfileMenuItem(
                          icon: Icons.help_outline,
                          title: 'Help Center',
                          subtitle: 'Get help and support',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        ProfileMenuItem(
                          icon: Icons.feedback_outlined,
                          title: 'Send Feedback',
                          subtitle: 'Share your thoughts with us',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        ProfileMenuItem(
                          icon: Icons.info_outline,
                          title: 'About',
                          subtitle: 'App version and information',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Sign Out Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _showSignOutDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Sign Out'),
                    ),
                  ),

                  const SizedBox(height: 100), // Bottom spacing for navigation
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAction(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String count,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 24, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 4),
            Text(
              count,
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSignOutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Sign Out'),
            content: const Text('Are you sure you want to sign out?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // TODO: Implement sign out logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Sign Out'),
              ),
            ],
          ),
    );
  }
}
