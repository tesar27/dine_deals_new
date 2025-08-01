// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
  id: json['id'] as String,
  name: json['name'] as String,
  address: json['address'] as String,
  description: json['description'] as String?,
  imageUrl: json['image_url'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  isActive: json['is_active'] as bool?,
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  cityId: (json['city_id'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'rating': instance.rating,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'city_id': instance.cityId,
      'tags': instance.tags,
    };
