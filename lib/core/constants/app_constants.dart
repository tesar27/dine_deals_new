// App Constants
class AppConstants {
  // App Info
  static const String appName = 'Dine Deals';
  static const String appVersion = '1.0.0';

  // Supabase Configuration
  static const String supabaseUrl = 'YOUR_SUPABASE_URL';
  static const String supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';

  // API
  static const Duration apiTimeout = Duration(seconds: 30);

  // UI
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double borderRadius = 12.0;
  static const double cardElevation = 2.0;

  // Animation Durations
  static const Duration fastAnimation = Duration(milliseconds: 200);
  static const Duration normalAnimation = Duration(milliseconds: 300);
  static const Duration slowAnimation = Duration(milliseconds: 500);

  // Bottom Navigation
  static const double bottomNavHeight = 80.0;

  // Images
  static const String placeholderImage = 'https://via.placeholder.com/300x200';

  // Switzerland Cities
  static const List<String> swissCities = [
    'Zurich',
    'Geneva',
    'Basel',
    'Bern',
    'Lausanne',
    'Winterthur',
    'Lucerne',
    'St. Gallen',
    'Lugano',
    'Biel/Bienne',
  ];

  // Bordering Cities
  static const List<String> borderingCities = [
    'Milan', // Italy
    'Lyon', // France
    'Munich', // Germany
    'Innsbruck', // Austria
    'Como', // Italy
    'Annecy', // France
    'Konstanz', // Germany
    'Salzburg', // Austria
  ];
}
