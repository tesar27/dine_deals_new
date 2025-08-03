import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/main/presentation/pages/main_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/feed/presentation/pages/feed_page.dart';
import '../../features/discover/presentation/pages/discover_page.dart';
import '../../features/bookings/presentation/pages/bookings_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/restaurant/presentation/pages/restaurant_detail_page.dart';

part 'app_router.g.dart';

// Route names
class AppRoutes {
  static const String main = '/';
  static const String home = '/home';
  static const String feed = '/feed';
  static const String discover = '/discover';
  static const String bookings = '/bookings';
  static const String profile = '/profile';
  static const String restaurantDetail = '/restaurant/:id';
  static const String menuItem = '/restaurant/:restaurantId/item/:itemId';
  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String orderTracking = '/order/:orderId';
  static const String login = '/login';
  static const String register = '/register';
  static const String onboarding = '/onboarding';
}

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: AppRoutes.main,
    debugLogDiagnostics: true,
    routes: [
      // Main Shell Route with Bottom Navigation
      ShellRoute(
        builder: (context, state, child) {
          return MainPage(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.home,
            name: 'home',
            pageBuilder:
                (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const HomePage(),
                ),
          ),
          GoRoute(
            path: AppRoutes.feed,
            name: 'feed',
            pageBuilder:
                (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const FeedPage(),
                ),
          ),
          GoRoute(
            path: AppRoutes.discover,
            name: 'discover',
            pageBuilder:
                (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const DiscoverPage(),
                ),
          ),
          GoRoute(
            path: AppRoutes.bookings,
            name: 'bookings',
            pageBuilder:
                (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const BookingsPage(),
                ),
          ),
          GoRoute(
            path: AppRoutes.profile,
            name: 'profile',
            pageBuilder:
                (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const ProfilePage(),
                ),
          ),
        ],
      ),

      // Redirect root to home
      GoRoute(
        path: AppRoutes.main,
        redirect: (context, state) => AppRoutes.home,
      ),

      // Other routes without bottom navigation
      GoRoute(
        path: '/restaurant/:id',
        name: 'restaurant-detail',
        pageBuilder: (context, state) {
          final id = state.pathParameters['id']!;
          return MaterialPage<void>(
            key: state.pageKey,
            child: RestaurantDetailPage(restaurantId: id),
          );
        },
      ),
      // TODO: Add cart, checkout, etc.
    ],
    errorBuilder:
        (context, state) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 64, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                  'Page not found',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  state.error.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => context.go(AppRoutes.home),
                  child: const Text('Go to Home'),
                ),
              ],
            ),
          ),
        ),
  );
}
