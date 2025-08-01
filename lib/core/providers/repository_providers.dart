import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/restaurant_repository.dart';
import '../repositories/deal_repository.dart';
import '../repositories/booking_repository.dart';
import '../repositories/city_repository.dart';

// Repository providers
final restaurantRepositoryProvider = Provider<RestaurantRepository>((ref) {
  return RestaurantRepository();
});

final dealRepositoryProvider = Provider<DealRepository>((ref) {
  return DealRepository();
});

final bookingRepositoryProvider = Provider<BookingRepository>((ref) {
  return BookingRepository();
});

final cityRepositoryProvider = Provider<CityRepository>((ref) {
  return CityRepository();
});
