import 'package:json_annotation/json_annotation.dart';

part 'deal.g.dart';

@JsonSerializable()
class Deal {
  final String id;
  @JsonKey(name: 'restaurant_id')
  final String restaurantId;
  final String name;
  final String? description;
  @JsonKey(name: 'original_price')
  final double? originalPrice;
  @JsonKey(name: 'valid_from')
  final DateTime? validFrom;
  @JsonKey(name: 'valid_until')
  final DateTime? validUntil;
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  final int? savings;

  const Deal({
    required this.id,
    required this.restaurantId,
    required this.name,
    this.description,
    this.originalPrice,
    this.validFrom,
    this.validUntil,
    this.isActive,
    this.imageUrl,
    this.createdAt,
    this.savings,
  });

  factory Deal.fromJson(Map<String, dynamic> json) => _$DealFromJson(json);
  Map<String, dynamic> toJson() => _$DealToJson(this);

  Deal copyWith({
    String? id,
    String? restaurantId,
    String? name,
    String? description,
    double? originalPrice,
    DateTime? validFrom,
    DateTime? validUntil,
    bool? isActive,
    String? imageUrl,
    DateTime? createdAt,
    int? savings,
  }) {
    return Deal(
      id: id ?? this.id,
      restaurantId: restaurantId ?? this.restaurantId,
      name: name ?? this.name,
      description: description ?? this.description,
      originalPrice: originalPrice ?? this.originalPrice,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
      isActive: isActive ?? this.isActive,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      savings: savings ?? this.savings,
    );
  }

  bool get isCurrentlyValid {
    final now = DateTime.now();
    if (validFrom != null && now.isBefore(validFrom!)) return false;
    if (validUntil != null && now.isAfter(validUntil!)) return false;
    return isActive ?? true;
  }

  double? get discountedPrice {
    if (originalPrice != null && savings != null) {
      return originalPrice! - savings!;
    }
    return null;
  }

  int? get discountPercentage {
    if (originalPrice != null && savings != null && originalPrice! > 0) {
      return ((savings! / originalPrice!) * 100).round();
    }
    return null;
  }
}
