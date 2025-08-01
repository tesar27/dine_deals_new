import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    required String category,
    required double rating,
    required int reviewCount,
    required String deliveryTime,
    required double deliveryFee,
    required double minimumOrder,
    required bool isOpen,
    required String address,
    required String city,
    required String country,
    required double latitude,
    required double longitude,
    required List<String> tags,
    @Default([]) List<MenuItem> menu,
    @Default(false) bool isFavorite,
    @Default(false) bool isPromoted,
    String? promoText,
    double? discountPercentage,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
}

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required String category,
    @Default([]) List<String> allergens,
    @Default([]) List<MenuItemOption> options,
    @Default(true) bool isAvailable,
    @Default(false) bool isPopular,
    @Default(false) bool isVegetarian,
    @Default(false) bool isVegan,
    @Default(false) bool isGlutenFree,
    String? preparationTime,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}

@freezed
class MenuItemOption with _$MenuItemOption {
  const factory MenuItemOption({
    required String id,
    required String name,
    required String type, // 'size', 'extras', 'choices'
    required bool isRequired,
    @Default([]) List<MenuItemChoice> choices,
    int? maxChoices,
    int? minChoices,
  }) = _MenuItemOption;

  factory MenuItemOption.fromJson(Map<String, dynamic> json) =>
      _$MenuItemOptionFromJson(json);
}

@freezed
class MenuItemChoice with _$MenuItemChoice {
  const factory MenuItemChoice({
    required String id,
    required String name,
    required double price,
    @Default(true) bool isAvailable,
  }) = _MenuItemChoice;

  factory MenuItemChoice.fromJson(Map<String, dynamic> json) =>
      _$MenuItemChoiceFromJson(json);
}

enum RestaurantCategory {
  pizza,
  burger,
  sushi,
  indian,
  chinese,
  italian,
  mexican,
  thai,
  healthy,
  dessert,
  coffee,
  breakfast,
  lunch,
  dinner,
  fastFood,
  fineDining,
}
