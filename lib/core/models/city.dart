import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  final int id;
  final String name;
  final double? latitude;
  final double? longitude;
  final String? country;

  const City({
    required this.id,
    required this.name,
    this.latitude,
    this.longitude,
    this.country,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);

  City copyWith({
    int? id,
    String? name,
    double? latitude,
    double? longitude,
    String? country,
  }) {
    return City(
      id: id ?? this.id,
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      country: country ?? this.country,
    );
  }
}
