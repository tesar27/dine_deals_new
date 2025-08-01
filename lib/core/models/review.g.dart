// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  restaurantId: json['restaurant_id'] as String,
  rating: (json['rating'] as num).toDouble(),
  comment: json['comment'] as String?,
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'restaurant_id': instance.restaurantId,
  'rating': instance.rating,
  'comment': instance.comment,
  'created_at': instance.createdAt?.toIso8601String(),
};
