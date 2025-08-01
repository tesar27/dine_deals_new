import 'package:json_annotation/json_annotation.dart';

part 'review.g.dart';

@JsonSerializable()
class Review {
  final String id;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'restaurant_id')
  final String restaurantId;
  final double rating;
  final String? comment;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  const Review({
    required this.id,
    required this.userId,
    required this.restaurantId,
    required this.rating,
    this.comment,
    this.createdAt,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);

  Review copyWith({
    String? id,
    String? userId,
    String? restaurantId,
    double? rating,
    String? comment,
    DateTime? createdAt,
  }) {
    return Review(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      restaurantId: restaurantId ?? this.restaurantId,
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
