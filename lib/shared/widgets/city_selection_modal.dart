import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers/city_provider.dart';
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

  // Helper method to get city priority (lower number = higher priority)
  int _getCityPriority(String cityName) {
    final majorCities = {
      'zurich': 1,
      'geneva': 2,
      'basel': 3,
      'bern': 4,
      'lausanne': 5,
      'winterthur': 6,
      'lucerne': 7,
      'st. gallen': 8,
      'lugano': 9,
      'schaffhausen': 10,
      'zug': 11,
      'thun': 12,
      'biel': 13,
      'köniz': 14,
      'fribourg': 15,
      'chur': 16,
      'neuchâtel': 17,
      'uster': 18,
      'sion': 19,
      'emmen': 20,
    };
    
    return majorCities[cityName.toLowerCase()] ?? 999; // Other cities get low priority
  }

  // Helper method to sort cities within a country
  List<City> _sortCities(List<City> cities) {
    cities.sort((a, b) {
      final aPriority = _getCityPriority(a.name);
      final bPriority = _getCityPriority(b.name);
      
      // First sort by priority (major cities first)
      if (aPriority != bPriority) {
        return aPriority.compareTo(bPriority);
      }
      
      // Then sort alphabetically for cities with same priority
      return a.name.compareTo(b.name);
    });
    return cities;
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

                // Sort cities within each country (major cities first)
                citiesByCountry.forEach((country, cities) {
                  citiesByCountry[country] = _sortCities(cities);
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
