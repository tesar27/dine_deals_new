import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers/city_provider.dart';
import '../../core/providers/location_provider.dart';
import '../../core/models/city.dart';

class CitySelectionModal extends ConsumerWidget {
  const CitySelectionModal({super.key});

  // Helper method to identify Swiss cities
  bool _isSwissCity(String cityName) {
    final swissCities = {
      'zurich',
      'geneva',
      'basel',
      'bern',
      'lausanne',
      'winterthur',
      'lucerne',
      'st. gallen',
      'lugano',
      'biel',
      'thun',
      'köniz',
      'schaffhausen',
      'fribourg',
      'chur',
      'neuchâtel',
      'uster',
      'sion',
      'emmen',
      'zug',
      'yverdon-les-bains',
      'kriens',
      'rapperswil-jona',
    };
    return swissCities.contains(cityName.toLowerCase());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final citiesAsync = ref.watch(citiesProvider);

    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
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
            child: Text(
              'Select City',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),

          // Self Location Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Consumer(
              builder: (context, ref, child) {
                final locationState = ref.watch(locationProvider);
                final isLoading = locationState.status == LocationStatus.requesting;

                return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: isLoading
                        ? null
                        : () async {
                            final locationNotifier = ref.read(locationProvider.notifier);
                            final nearestCity = await locationNotifier.findNearestCity();
                            
                            if (nearestCity != null && context.mounted) {
                              ref.read(cityProvider.notifier).selectCity(nearestCity);
                              Navigator.of(context).pop();
                            } else if (context.mounted) {
                              // Show error dialog for unknown location
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Location Not Found'),
                                  content: const Text('We couldn\'t find any nearby cities. Please select a city manually.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.of(context).pop(),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                    icon: isLoading
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.my_location),
                    label: Text(isLoading ? 'Finding Location...' : 'Use My Location'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          // Cities List
          Expanded(
            child: citiesAsync.when(
              data: (cities) {
                // Group cities by country
                final citiesByCountry = <String, List<City>>{};
                for (final city in cities) {
                  // Fix: Default to Switzerland for Swiss cities or null countries
                  String country = city.country ?? 'Switzerland';

                  // Ensure Swiss cities are properly categorized
                  if (country.isEmpty ||
                      country.toLowerCase() == 'ch' ||
                      country.toLowerCase() == 'schweiz' ||
                      _isSwissCity(city.name)) {
                    country = 'Switzerland';
                  }

                  if (!citiesByCountry.containsKey(country)) {
                    citiesByCountry[country] = [];
                  }
                  citiesByCountry[country]!.add(city);
                }

                // Sort cities within each country alphabetically
                citiesByCountry.forEach((country, cities) {
                  cities.sort((a, b) => a.name.compareTo(b.name));
                });

                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: citiesByCountry.length,
                  itemBuilder: (context, index) {
                    final country = citiesByCountry.keys.elementAt(index);
                    final citiesInCountry = citiesByCountry[country]!;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Country Header
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            country,
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),

                        // Cities
                        ...citiesInCountry.map(
                          (city) => ListTile(
                            title: Text(city.name),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () {
                              ref.read(cityProvider.notifier).selectCity(city);
                              Navigator.of(context).pop();
                            },
                          ),
                        ),

                        const SizedBox(height: 16),
                      ],
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error:
                  (error, stack) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error, size: 48, color: Colors.red),
                        const SizedBox(height: 16),
                        Text(
                          'Failed to load cities',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          error.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
