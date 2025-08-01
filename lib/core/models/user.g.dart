// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: json['id'] as String,
  email: json['email'] as String,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  phone: json['phone'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  lastLogin:
      json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
  updatedAt:
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
  isSuperAdmin: json['is_super_admin'] as bool?,
  favorites:
      (json['favorites'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'avatar_url': instance.avatarUrl,
  'created_at': instance.createdAt?.toIso8601String(),
  'last_login': instance.lastLogin?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'is_super_admin': instance.isSuperAdmin,
  'favorites': instance.favorites,
};
