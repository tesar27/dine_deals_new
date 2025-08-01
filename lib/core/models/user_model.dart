import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? avatarUrl,
    @Default([]) List<Address> addresses,
    Address? defaultAddress,
    @Default([]) List<String> favoriteRestaurants,
    @Default([]) List<Order> orderHistory,
    @Default(UserPreferences()) UserPreferences preferences,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required String id,
    required String street,
    required String city,
    required String postalCode,
    required String country,
    required double latitude,
    required double longitude,
    String? apartmentNumber,
    String? label, // 'Home', 'Work', etc.
    String? deliveryInstructions,
    @Default(false) bool isDefault,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @Default(true) bool pushNotifications,
    @Default(true) bool emailNotifications,
    @Default(true) bool orderUpdates,
    @Default(true) bool promotionalOffers,
    @Default('en') String language,
    @Default('CHF') String currency,
    @Default([]) List<String> dietaryRestrictions,
    @Default([]) List<String> allergens,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    required String userId,
    required String restaurantId,
    required String restaurantName,
    required List<OrderItem> items,
    required double subtotal,
    required double deliveryFee,
    required double tax,
    required double total,
    required OrderStatus status,
    required Address deliveryAddress,
    required DateTime createdAt,
    DateTime? estimatedDeliveryTime,
    DateTime? deliveredAt,
    String? specialInstructions,
    String? driverId,
    String? trackingUrl,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String menuItemId,
    required String name,
    required double price,
    required int quantity,
    @Default([]) List<OrderItemChoice> choices,
    String? specialInstructions,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
class OrderItemChoice with _$OrderItemChoice {
  const factory OrderItemChoice({
    required String optionId,
    required String choiceId,
    required String name,
    required double price,
  }) = _OrderItemChoice;

  factory OrderItemChoice.fromJson(Map<String, dynamic> json) =>
      _$OrderItemChoiceFromJson(json);
}

enum OrderStatus {
  placed,
  confirmed,
  preparing,
  ready,
  outForDelivery,
  delivered,
  cancelled,
}
