// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  country: json['country'] as String?,
);

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'country': instance.country,
};
