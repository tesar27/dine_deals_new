// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  addresses:
      (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  defaultAddress:
      json['defaultAddress'] == null
          ? null
          : Address.fromJson(json['defaultAddress'] as Map<String, dynamic>),
  favoriteRestaurants:
      (json['favoriteRestaurants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  orderHistory:
      (json['orderHistory'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  preferences:
      json['preferences'] == null
          ? const UserPreferences()
          : UserPreferences.fromJson(
            json['preferences'] as Map<String, dynamic>,
          ),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'avatarUrl': instance.avatarUrl,
      'addresses': instance.addresses,
      'defaultAddress': instance.defaultAddress,
      'favoriteRestaurants': instance.favoriteRestaurants,
      'orderHistory': instance.orderHistory,
      'preferences': instance.preferences,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: json['id'] as String,
      street: json['street'] as String,
      city: json['city'] as String,
      postalCode: json['postalCode'] as String,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      apartmentNumber: json['apartmentNumber'] as String?,
      label: json['label'] as String?,
      deliveryInstructions: json['deliveryInstructions'] as String?,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street': instance.street,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'apartmentNumber': instance.apartmentNumber,
      'label': instance.label,
      'deliveryInstructions': instance.deliveryInstructions,
      'isDefault': instance.isDefault,
    };

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
  Map<String, dynamic> json,
) => _$UserPreferencesImpl(
  pushNotifications: json['pushNotifications'] as bool? ?? true,
  emailNotifications: json['emailNotifications'] as bool? ?? true,
  orderUpdates: json['orderUpdates'] as bool? ?? true,
  promotionalOffers: json['promotionalOffers'] as bool? ?? true,
  language: json['language'] as String? ?? 'en',
  currency: json['currency'] as String? ?? 'CHF',
  dietaryRestrictions:
      (json['dietaryRestrictions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  allergens:
      (json['allergens'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$UserPreferencesImplToJson(
  _$UserPreferencesImpl instance,
) => <String, dynamic>{
  'pushNotifications': instance.pushNotifications,
  'emailNotifications': instance.emailNotifications,
  'orderUpdates': instance.orderUpdates,
  'promotionalOffers': instance.promotionalOffers,
  'language': instance.language,
  'currency': instance.currency,
  'dietaryRestrictions': instance.dietaryRestrictions,
  'allergens': instance.allergens,
};

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  restaurantId: json['restaurantId'] as String,
  restaurantName: json['restaurantName'] as String,
  items:
      (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
  subtotal: (json['subtotal'] as num).toDouble(),
  deliveryFee: (json['deliveryFee'] as num).toDouble(),
  tax: (json['tax'] as num).toDouble(),
  total: (json['total'] as num).toDouble(),
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  deliveryAddress: Address.fromJson(
    json['deliveryAddress'] as Map<String, dynamic>,
  ),
  createdAt: DateTime.parse(json['createdAt'] as String),
  estimatedDeliveryTime:
      json['estimatedDeliveryTime'] == null
          ? null
          : DateTime.parse(json['estimatedDeliveryTime'] as String),
  deliveredAt:
      json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
  specialInstructions: json['specialInstructions'] as String?,
  driverId: json['driverId'] as String?,
  trackingUrl: json['trackingUrl'] as String?,
);

Map<String, dynamic> _$$OrderImplToJson(
  _$OrderImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'restaurantId': instance.restaurantId,
  'restaurantName': instance.restaurantName,
  'items': instance.items,
  'subtotal': instance.subtotal,
  'deliveryFee': instance.deliveryFee,
  'tax': instance.tax,
  'total': instance.total,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'deliveryAddress': instance.deliveryAddress,
  'createdAt': instance.createdAt.toIso8601String(),
  'estimatedDeliveryTime': instance.estimatedDeliveryTime?.toIso8601String(),
  'deliveredAt': instance.deliveredAt?.toIso8601String(),
  'specialInstructions': instance.specialInstructions,
  'driverId': instance.driverId,
  'trackingUrl': instance.trackingUrl,
};

const _$OrderStatusEnumMap = {
  OrderStatus.placed: 'placed',
  OrderStatus.confirmed: 'confirmed',
  OrderStatus.preparing: 'preparing',
  OrderStatus.ready: 'ready',
  OrderStatus.outForDelivery: 'outForDelivery',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      menuItemId: json['menuItemId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      choices:
          (json['choices'] as List<dynamic>?)
              ?.map((e) => OrderItemChoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      specialInstructions: json['specialInstructions'] as String?,
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'menuItemId': instance.menuItemId,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'choices': instance.choices,
      'specialInstructions': instance.specialInstructions,
    };

_$OrderItemChoiceImpl _$$OrderItemChoiceImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemChoiceImpl(
  optionId: json['optionId'] as String,
  choiceId: json['choiceId'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$$OrderItemChoiceImplToJson(
  _$OrderItemChoiceImpl instance,
) => <String, dynamic>{
  'optionId': instance.optionId,
  'choiceId': instance.choiceId,
  'name': instance.name,
  'price': instance.price,
};
