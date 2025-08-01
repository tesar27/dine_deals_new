// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deal _$DealFromJson(Map<String, dynamic> json) => Deal(
  id: json['id'] as String,
  restaurantId: json['restaurant_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  originalPrice: (json['original_price'] as num?)?.toDouble(),
  validFrom:
      json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
  validUntil:
      json['valid_until'] == null
          ? null
          : DateTime.parse(json['valid_until'] as String),
  isActive: json['is_active'] as bool?,
  imageUrl: json['image_url'] as String?,
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  savings: (json['savings'] as num?)?.toInt(),
);

Map<String, dynamic> _$DealToJson(Deal instance) => <String, dynamic>{
  'id': instance.id,
  'restaurant_id': instance.restaurantId,
  'name': instance.name,
  'description': instance.description,
  'original_price': instance.originalPrice,
  'valid_from': instance.validFrom?.toIso8601String(),
  'valid_until': instance.validUntil?.toIso8601String(),
  'is_active': instance.isActive,
  'image_url': instance.imageUrl,
  'created_at': instance.createdAt?.toIso8601String(),
  'savings': instance.savings,
};
