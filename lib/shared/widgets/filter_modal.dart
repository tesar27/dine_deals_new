import 'package:flutter/material.dart';

class FilterModal extends StatefulWidget {
  final Function(Map<String, dynamic>) onApplyFilter;

  const FilterModal({super.key, required this.onApplyFilter});

  @override
  State<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  // Filter state variables
  String _selectedCuisine = 'All';
  RangeValues _priceRange = const RangeValues(10, 50);
  double _minRating = 3.0;
  String _deliveryTime = 'Any';
  bool _openNow = false;
  bool _freeDelivery = false;
  bool _vegetarianOptions = false;

  final List<String> _cuisines = [
    'All',
    'Swiss',
    'Italian',
    'French',
    'German',
    'Japanese',
    'Indian',
    'Chinese',
    'Thai',
    'Mexican',
    'American',
  ];

  final List<String> _deliveryTimes = [
    'Any',
    '15 min',
    '30 min',
    '45 min',
    '1 hour',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Handle and Header
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: Column(
              children: [
                // Handle
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 16),

                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filters',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: _resetFilters,
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Filter Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cuisine Type
                  _buildSectionTitle('Cuisine Type'),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children:
                        _cuisines.map((cuisine) {
                          return FilterChip(
                            label: Text(cuisine),
                            selected: _selectedCuisine == cuisine,
                            onSelected: (selected) {
                              setState(() {
                                _selectedCuisine = cuisine;
                              });
                            },
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            selectedColor: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.15),
                            checkmarkColor:
                                Theme.of(context).colorScheme.primary,
                            labelStyle: TextStyle(
                              color:
                                  _selectedCuisine == cuisine
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onSurface,
                              fontWeight:
                                  _selectedCuisine == cuisine
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                            ),
                            side: BorderSide(
                              color:
                                  _selectedCuisine == cuisine
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(
                                        context,
                                      ).colorScheme.outline.withOpacity(0.5),
                            ),
                          );
                        }).toList(),
                  ),

                  const SizedBox(height: 32),

                  // Price Range
                  _buildSectionTitle('Price Range (CHF)'),
                  const SizedBox(height: 16),
                  RangeSlider(
                    values: _priceRange,
                    min: 5,
                    max: 100,
                    divisions: 19,
                    labels: RangeLabels(
                      'CHF ${_priceRange.start.round()}',
                      'CHF ${_priceRange.end.round()}',
                    ),
                    onChanged: (values) {
                      setState(() {
                        _priceRange = values;
                      });
                    },
                  ),

                  const SizedBox(height: 32),

                  // Rating
                  _buildSectionTitle('Minimum Rating'),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Slider(
                          value: _minRating,
                          min: 1.0,
                          max: 5.0,
                          divisions: 8,
                          label: '${_minRating.toStringAsFixed(1)} stars',
                          onChanged: (value) {
                            setState(() {
                              _minRating = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              _minRating.toStringAsFixed(1),
                              style: Theme.of(context).textTheme.labelMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // Delivery Time
                  _buildSectionTitle('Delivery Time'),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children:
                        _deliveryTimes.map((time) {
                          return FilterChip(
                            label: Text(time),
                            selected: _deliveryTime == time,
                            onSelected: (selected) {
                              setState(() {
                                _deliveryTime = time;
                              });
                            },
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            selectedColor: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.15),
                            checkmarkColor:
                                Theme.of(context).colorScheme.primary,
                            labelStyle: TextStyle(
                              color:
                                  _deliveryTime == time
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onSurface,
                              fontWeight:
                                  _deliveryTime == time
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                            ),
                            side: BorderSide(
                              color:
                                  _deliveryTime == time
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(
                                        context,
                                      ).colorScheme.outline.withOpacity(0.5),
                            ),
                          );
                        }).toList(),
                  ),

                  const SizedBox(height: 32),

                  // Additional Filters
                  _buildSectionTitle('Additional Filters'),
                  const SizedBox(height: 16),

                  _buildSwitchTile('Open Now', _openNow, (value) {
                    setState(() {
                      _openNow = value;
                    });
                  }),

                  _buildSwitchTile('Free Delivery', _freeDelivery, (value) {
                    setState(() {
                      _freeDelivery = value;
                    });
                  }),

                  _buildSwitchTile('Vegetarian Options', _vegetarianOptions, (
                    value,
                  ) {
                    setState(() {
                      _vegetarianOptions = value;
                    });
                  }),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),

          // Apply Button
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _applyFilters,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Apply Filters'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSwitchTile(String title, bool value, Function(bool) onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyLarge),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }

  void _resetFilters() {
    setState(() {
      _selectedCuisine = 'All';
      _priceRange = const RangeValues(10, 50);
      _minRating = 3.0;
      _deliveryTime = 'Any';
      _openNow = false;
      _freeDelivery = false;
      _vegetarianOptions = false;
    });
  }

  void _applyFilters() {
    final filters = <String, dynamic>{
      'cuisine': _selectedCuisine,
      'priceRange': _priceRange,
      'minRating': _minRating,
      'deliveryTime': _deliveryTime,
      'openNow': _openNow,
      'freeDelivery': _freeDelivery,
      'vegetarianOptions': _vegetarianOptions,
    };

    // Remove default values to determine if any filters are actually applied
    final appliedFilters = <String, dynamic>{};

    if (_selectedCuisine != 'All') appliedFilters['cuisine'] = _selectedCuisine;
    if (_priceRange.start != 10 || _priceRange.end != 50)
      appliedFilters['priceRange'] = _priceRange;
    if (_minRating != 3.0) appliedFilters['minRating'] = _minRating;
    if (_deliveryTime != 'Any') appliedFilters['deliveryTime'] = _deliveryTime;
    if (_openNow) appliedFilters['openNow'] = _openNow;
    if (_freeDelivery) appliedFilters['freeDelivery'] = _freeDelivery;
    if (_vegetarianOptions)
      appliedFilters['vegetarianOptions'] = _vegetarianOptions;

    widget.onApplyFilter(appliedFilters);
  }
}
