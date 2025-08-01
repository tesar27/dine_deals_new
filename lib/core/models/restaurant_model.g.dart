// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantImpl _$$RestaurantImplFromJson(Map<String, dynamic> json) =>
    _$RestaurantImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      category: json['category'] as String,
      rating: (json['rating'] as num).toDouble(),
      reviewCount: (json['reviewCount'] as num).toInt(),
      deliveryTime: json['deliveryTime'] as String,
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      minimumOrder: (json['minimumOrder'] as num).toDouble(),
      isOpen: json['isOpen'] as bool,
      address: json['address'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      menu:
          (json['menu'] as List<dynamic>?)
              ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isFavorite: json['isFavorite'] as bool? ?? false,
      isPromoted: json['isPromoted'] as bool? ?? false,
      promoText: json['promoText'] as String?,
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RestaurantImplToJson(_$RestaurantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'deliveryTime': instance.deliveryTime,
      'deliveryFee': instance.deliveryFee,
      'minimumOrder': instance.minimumOrder,
      'isOpen': instance.isOpen,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'tags': instance.tags,
      'menu': instance.menu,
      'isFavorite': instance.isFavorite,
      'isPromoted': instance.isPromoted,
      'promoText': instance.promoText,
      'discountPercentage': instance.discountPercentage,
    };

_$MenuItemImpl _$$MenuItemImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      category: json['category'] as String,
      allergens:
          (json['allergens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => MenuItemOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isAvailable: json['isAvailable'] as bool? ?? true,
      isPopular: json['isPopular'] as bool? ?? false,
      isVegetarian: json['isVegetarian'] as bool? ?? false,
      isVegan: json['isVegan'] as bool? ?? false,
      isGlutenFree: json['isGlutenFree'] as bool? ?? false,
      preparationTime: json['preparationTime'] as String?,
    );

Map<String, dynamic> _$$MenuItemImplToJson(_$MenuItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
      'allergens': instance.allergens,
      'options': instance.options,
      'isAvailable': instance.isAvailable,
      'isPopular': instance.isPopular,
      'isVegetarian': instance.isVegetarian,
      'isVegan': instance.isVegan,
      'isGlutenFree': instance.isGlutenFree,
      'preparationTime': instance.preparationTime,
    };

_$MenuItemOptionImpl _$$MenuItemOptionImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemOptionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      isRequired: json['isRequired'] as bool,
      choices:
          (json['choices'] as List<dynamic>?)
              ?.map((e) => MenuItemChoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      maxChoices: (json['maxChoices'] as num?)?.toInt(),
      minChoices: (json['minChoices'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MenuItemOptionImplToJson(
  _$MenuItemOptionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'isRequired': instance.isRequired,
  'choices': instance.choices,
  'maxChoices': instance.maxChoices,
  'minChoices': instance.minChoices,
};

_$MenuItemChoiceImpl _$$MenuItemChoiceImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemChoiceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      isAvailable: json['isAvailable'] as bool? ?? true,
    );

Map<String, dynamic> _$$MenuItemChoiceImplToJson(
  _$MenuItemChoiceImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price': instance.price,
  'isAvailable': instance.isAvailable,
};
