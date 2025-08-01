# Dine Deals - Flutter Food Delivery App

A modern Flutter food delivery application inspired by Wolt, built with best practices and clean architecture.

## 🚀 Features

- **Modern UI Design**: Wolt-inspired interface with clean, intuitive design
- **5 Main Tabs**: Discovery, Restaurants, Stores, Search, and Profile
- **Mock Data**: Swiss and bordering cities restaurants with realistic data
- **State Management**: Riverpod with code generation for type-safe state management
- **Responsive Design**: Optimized for various screen sizes
- **Location Services**: GPS-based location detection
- **Search Functionality**: Real-time search across restaurants and food items
- **Clean Architecture**: Modular, scalable, and maintainable code structure

## 🏗️ Project Structure

```
lib/
├── core/                    # Core functionality and shared utilities
│   ├── constants/          # App-wide constants
│   ├── models/            # Data models (Freezed)
│   ├── router/            # Navigation and routing (GoRouter)
│   ├── services/          # Core services and APIs
│   └── theme/             # App theme and styling
├── features/              # Feature-based modules
│   ├── discovery/         # Discovery page and related functionality
│   ├── main/              # Main app shell with bottom navigation
│   ├── profile/           # User profile and settings
│   ├── restaurants/       # Restaurant listings (placeholder)
│   ├── search/            # Search functionality (placeholder)
│   └── stores/            # Store listings (placeholder)
└── shared/                # Shared widgets and utilities
    └── widgets/           # Reusable UI components
```

## 🛠️ Tech Stack

- **Framework**: Flutter (Latest)
- **State Management**: Riverpod + Riverpod Annotations
- **Navigation**: GoRouter
- **Code Generation**: Freezed, JSON Annotation, Riverpod Generator
- **UI**: Material Design 3
- **Fonts**: Google Fonts (Inter)
- **Images**: Cached Network Image
- **Location**: Geolocator
- **HTTP**: Supabase Flutter (prepared for backend integration)

## 📦 Dependencies

### Main Dependencies
- `flutter_riverpod`: State management
- `riverpod_annotation`: Riverpod code generation annotations
- `go_router`: Declarative routing
- `supabase_flutter`: Backend integration (prepared)
- `google_fonts`: Typography
- `cached_network_image`: Optimized image loading
- `geolocator`: Location services
- `freezed_annotation`: Immutable data classes
- `json_annotation`: JSON serialization

### Dev Dependencies
- `riverpod_generator`: Code generation for Riverpod
- `build_runner`: Code generation runner
- `freezed`: Data class generation
- `json_serializable`: JSON serialization generation

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.7.2)
- Dart SDK (>=2.19.0)
- iOS Simulator/Android Emulator or Physical Device

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd dine_deals
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run code generation**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### Code Generation

When you modify models or add new Riverpod providers, run:
```bash
dart run build_runner build --delete-conflicting-outputs
```

Or for continuous generation during development:
```bash
dart run build_runner watch --delete-conflicting-outputs
```

## 🏢 Mock Data

The app includes comprehensive mock data featuring:

### Swiss Cities
- Zurich, Geneva, Basel, Bern, Lausanne, Winterthur, Lucerne, St. Gallen, Lugano, Biel/Bienne

### Bordering Cities
- Milan (Italy), Lyon (France), Munich (Germany), Innsbruck (Austria)
- Como (Italy), Annecy (France), Konstanz (Germany), Salzburg (Austria)

### Restaurant Categories
- Swiss Traditional, Italian, French, German, Japanese, Indian, Pizza, Healthy, Fast Food

## 🎨 Design System

The app follows a consistent design system with:
- **Primary Color**: Wolt Blue (#009DE0)
- **Typography**: Inter font family
- **Spacing**: 8px grid system
- **Border Radius**: 12px default
- **Shadows**: Subtle elevation for cards and components

## 🔧 Architecture

### Clean Architecture Principles
- **Separation of Concerns**: Each layer has a single responsibility
- **Dependency Inversion**: High-level modules don't depend on low-level modules
- **Feature-based Structure**: Organized by business features
- **Testability**: Easy to unit test and mock dependencies

### State Management with Riverpod
- **Type Safety**: Compile-time error checking
- **Code Generation**: Automated provider generation
- **Performance**: Optimized rebuilds and caching
- **DevTools**: Excellent debugging experience

## 🧪 Testing

```bash
# Run unit tests
flutter test

# Run widget tests
flutter test test/widget_test.dart

# Run integration tests
flutter drive --target=test_driver/app.dart
```

## 📱 Screens

### Current Implementation
- ✅ **Discovery Page**: Featured restaurants, categories, search
- ✅ **Profile Page**: User settings, preferences, account management
- ✅ **Bottom Navigation**: 5-tab navigation system

### Planned Features
- 🔄 **Restaurant Detail**: Menu, reviews, ordering
- 🔄 **Cart & Checkout**: Order management
- 🔄 **Search Page**: Advanced filtering and search
- 🔄 **Order Tracking**: Real-time order status
- 🔄 **Authentication**: Login/Register with Supabase

## 🌐 Backend Integration

The app is prepared for Supabase integration:
- Authentication ready
- Database models defined
- API service structure in place

To connect to Supabase:
1. Create a Supabase project
2. Update `AppConstants` with your Supabase URL and anon key
3. Implement authentication and data fetching services

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by Wolt's exceptional UX/UI design
- Built with Flutter's amazing ecosystem
- Powered by Riverpod's robust state management
