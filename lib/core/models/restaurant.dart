import 'package:json_annotation/json_annotation.dart';

part 'restaurant.g.dart';

@JsonSerializable()
class Restaurant {
  final String id;
  final String name;
  final String address;
  final String? description;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final double? rating;
  final double? latitude;
  final double? longitude;
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'city_id')
  final int? cityId;
  final List<String>? tags;

  const Restaurant({
    required this.id,
    required this.name,
    required this.address,
    this.description,
    this.imageUrl,
    this.rating,
    this.latitude,
    this.longitude,
    this.isActive,
    this.createdAt,
    this.cityId,
    this.tags,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);

  Restaurant copyWith({
    String? id,
    String? name,
    String? address,
    String? description,
    String? imageUrl,
    double? rating,
    double? latitude,
    double? longitude,
    bool? isActive,
    DateTime? createdAt,
    int? cityId,
    List<String>? tags,
  }) {
    return Restaurant(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      rating: rating ?? this.rating,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      cityId: cityId ?? this.cityId,
      tags: tags ?? this.tags,
    );
  }

  bool get hasValidLocation => latitude != null && longitude != null;
}
