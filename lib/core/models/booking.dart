import 'package:json_annotation/json_annotation.dart';

part 'booking.g.dart';

enum BookingStatus {
  @JsonValue('booked')
  booked,
  @JsonValue('redeemed')
  redeemed,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('expired')
  expired,
}

@JsonSerializable()
class Booking {
  final String id;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'offer_id')
  final String offerId;
  @JsonKey(name: 'booked_at')
  final DateTime? bookedAt;
  @JsonKey(name: 'redeemed_at')
  final DateTime? redeemedAt;
  final BookingStatus status;
  @JsonKey(name: 'qr_code')
  final String? qrCode;

  const Booking({
    required this.id,
    required this.userId,
    required this.offerId,
    this.bookedAt,
    this.redeemedAt,
    required this.status,
    this.qrCode,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
  Map<String, dynamic> toJson() => _$BookingToJson(this);

  Booking copyWith({
    String? id,
    String? userId,
    String? offerId,
    DateTime? bookedAt,
    DateTime? redeemedAt,
    BookingStatus? status,
    String? qrCode,
  }) {
    return Booking(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      offerId: offerId ?? this.offerId,
      bookedAt: bookedAt ?? this.bookedAt,
      redeemedAt: redeemedAt ?? this.redeemedAt,
      status: status ?? this.status,
      qrCode: qrCode ?? this.qrCode,
    );
  }

  bool get isRedeemed => status == BookingStatus.redeemed;
  bool get isActive => status == BookingStatus.booked;
  bool get isCancelled => status == BookingStatus.cancelled;
  bool get isExpired => status == BookingStatus.expired;
}
