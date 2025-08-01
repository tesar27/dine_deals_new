// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  offerId: json['offer_id'] as String,
  bookedAt:
      json['booked_at'] == null
          ? null
          : DateTime.parse(json['booked_at'] as String),
  redeemedAt:
      json['redeemed_at'] == null
          ? null
          : DateTime.parse(json['redeemed_at'] as String),
  status: $enumDecode(_$BookingStatusEnumMap, json['status']),
  qrCode: json['qr_code'] as String?,
);

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'offer_id': instance.offerId,
  'booked_at': instance.bookedAt?.toIso8601String(),
  'redeemed_at': instance.redeemedAt?.toIso8601String(),
  'status': _$BookingStatusEnumMap[instance.status]!,
  'qr_code': instance.qrCode,
};

const _$BookingStatusEnumMap = {
  BookingStatus.booked: 'booked',
  BookingStatus.redeemed: 'redeemed',
  BookingStatus.cancelled: 'cancelled',
  BookingStatus.expired: 'expired',
};
