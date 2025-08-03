import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../../../core/services/mock_data_service.dart';
import '../../../../core/providers/city_provider.dart';
import '../../../../core/providers/search_provider.dart';
import '../../../../shared/widgets/restaurant_card.dart';
import '../../../../shared/widgets/shared_top_bar.dart';
import '../../../../shared/widgets/search_overlay.dart';
import '../../../../shared/widgets/filter_modal.dart';
import '../../../../shared/widgets/city_selection_modal.dart';
import '../../../city_selection/city_selection_screen.dart';

class DiscoverPage extends ConsumerStatefulWidget {
  const DiscoverPage({super.key});

  @override
  ConsumerState<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends ConsumerState<DiscoverPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isFilterApplied = false;
  bool _isMapView = true; // Default to map view for NeoTaste style

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _showFilterModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => FilterModal(
            onApplyFilter: (filters) {
              setState(() {
                _isFilterApplied = filters.isNotEmpty;
              });
              Navigator.of(context).pop();
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cityState = ref.watch(cityProvider);
    final searchState = ref.watch(searchProvider);

    // Show search overlay if searching
    if (searchState.isSearching) {
      return const SearchOverlay();
    }

    final restaurants = MockDataService.getMockRestaurants();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const SharedTopBar(showSearchIcon: true),
      body: Stack(
        children: [
          // Full-screen Map View (NeoTaste style) or List View
          _isMapView
              ? Stack(
                children: [
                  // Full-screen map
                  FlutterMap(
                    options: const MapOptions(
                      initialCenter: LatLng(47.3769, 8.5417), // Zurich
                      initialZoom: 13.0,
                      minZoom: 8.0,
                      maxZoom: 18.0,
                    ),
                    children: [
                      // Using a minimal style tile layer
                      TileLayer(
                        // CARTO Voyager No Labels - designed for minimal place markers
                        urlTemplate:
                            'https://{s}.basemaps.cartocdn.com/rastertiles/voyager_nolabels/{z}/{x}/{y}{r}.png',
                        subdomains: const [
                          'a',
                          'b',
                          'c',
                          'd',
                        ], // Standard CARTO subdomains
                        // It's polite and often required to identify your app
                        userAgentPackageName: 'com.yerbolat.dinedeals',
                        additionalOptions: const {
                          'attribution':
                              '© Stadia Maps © OpenMapTiles © OpenStreetMap',
                        },
                        fallbackUrl:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      ),
                      // Labels overlay - only shows city names and major places
                      TileLayer(
                        urlTemplate:
                            'https://{s}.basemaps.cartocdn.com/rastertiles/voyager_only_labels/{z}/{x}/{y}{r}.png',
                        subdomains: const ['a', 'b', 'c', 'd'],
                        userAgentPackageName: 'com.yerbolat.dinedeals',
                        additionalOptions: const {
                          'attribution': '© CARTO © OpenStreetMap contributors',
                        },
                      ),

                      MarkerLayer(
                        markers:
                            restaurants.map((restaurant) {
                              return Marker(
                                point: LatLng(
                                  restaurant.latitude,
                                  restaurant.longitude,
                                ),
                                width: 45,
                                height: 45,
                                child: GestureDetector(
                                  onTap: () {
                                    print(
                                      'Tapped restaurant: ${restaurant.name}',
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 3,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 6,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.restaurant,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                      ),
                    ],
                  ),

                  // Show Cities popup for map view when no city selected
                  if (!cityState.isInitialized ||
                      cityState.selectedCity == null)
                    Positioned(
                      bottom: 180,
                      left: 20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.surface.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Select a city to view local restaurants',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      builder:
                                          (context) =>
                                              const CitySelectionModal(),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 12,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: const Text('Show Cities'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              )
              : CustomScrollView(
                controller: _scrollController,
                slivers: [
                  // Welcome text for list view (when no city selected)
                  if (!cityState.isInitialized ||
                      cityState.selectedCity == null)
                    const SliverToBoxAdapter(child: CitySelectionScreen())
                  else ...[
                    // Restaurant List
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(
                        16,
                        16,
                        16,
                        120,
                      ), // Extra bottom padding
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final restaurant = restaurants[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: RestaurantCard(restaurant: restaurant),
                          );
                        }, childCount: restaurants.length),
                      ),
                    ),
                  ],
                ],
              ),

          // Merged Floating Action Buttons (Oval shape split into two)
          Positioned(
            bottom: 25, // Above bottom navigation
            left: 20,
            right: 20,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.surface.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 16,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Filter Button (Left side)
                        Container(
                          decoration: BoxDecoration(
                            color:
                                _isFilterApplied
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                              onTap: _showFilterModal,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 14,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.tune,
                                      color:
                                          _isFilterApplied
                                              ? Colors.white
                                              : Theme.of(
                                                context,
                                              ).colorScheme.onSurface,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Filter',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelLarge?.copyWith(
                                        color:
                                            _isFilterApplied
                                                ? Colors.white
                                                : Theme.of(
                                                  context,
                                                ).colorScheme.onSurface,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Divider
                        Container(
                          width: 1,
                          height: 30,
                          color: Theme.of(
                            context,
                          ).colorScheme.outline.withOpacity(0.3),
                        ),

                        // Map/List Toggle Button (Right side)
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              onTap: () {
                                setState(() {
                                  _isMapView = !_isMapView;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 14,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      _isMapView ? Icons.list : Icons.map,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onSurface,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      _isMapView ? 'List' : 'Map',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelLarge?.copyWith(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onSurface,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
