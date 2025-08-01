import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers/city_provider.dart';

class CitySelectionModal extends ConsumerWidget {
  const CitySelectionModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final citiesByCountry = CityNotifier.getCitiesByCountry();

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
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: citiesByCountry.length,
              itemBuilder: (context, index) {
                final country = citiesByCountry.keys.elementAt(index);
                final cities = citiesByCountry[country]!;

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
                    ...cities.map(
                      (city) => ListTile(
                        title: Text(city),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          ref
                              .read(cityProvider.notifier)
                              .selectCity(city, country);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),

                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
