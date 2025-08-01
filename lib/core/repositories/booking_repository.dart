import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/booking.dart';
import '../services/supabase_service.dart';

class BookingRepository {
  final SupabaseClient _client = SupabaseService.client;

  // Create a new booking
  Future<Booking> createBooking({
    required String userId,
    required String offerId,
  }) async {
    try {
      final bookingData = {
        'user_id': userId,
        'offer_id': offerId,
        'status': 'booked',
        'booked_at': DateTime.now().toIso8601String(),
        'qr_code': _generateQRCode(),
      };

      final response =
          await _client.from('bookings').insert(bookingData).select().single();

      return Booking.fromJson(response);
    } catch (e) {
      throw Exception('Failed to create booking: $e');
    }
  }

  // Get user's bookings
  Future<List<Booking>> getUserBookings(
    String userId, {
    BookingStatus? status,
    int limit = 50,
  }) async {
    try {
      var query = _client
          .from('bookings')
          .select('*, deals!inner(*), restaurants!inner(*)')
          .eq('user_id', userId);

      if (status != null) {
        query = query.eq('status', status.name);
      }

      final response = await query
          .order('booked_at', ascending: false)
          .limit(limit);

      return (response as List).map((json) => Booking.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch user bookings: $e');
    }
  }

  // Get booking by ID
  Future<Booking?> getBookingById(String id) async {
    try {
      final response =
          await _client
              .from('bookings')
              .select('*, deals!inner(*), restaurants!inner(*)')
              .eq('id', id)
              .single();

      return Booking.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch booking: $e');
    }
  }

  // Redeem a booking
  Future<Booking> redeemBooking(String bookingId) async {
    try {
      final response =
          await _client
              .from('bookings')
              .update({
                'status': 'redeemed',
                'redeemed_at': DateTime.now().toIso8601String(),
              })
              .eq('id', bookingId)
              .select()
              .single();

      return Booking.fromJson(response);
    } catch (e) {
      throw Exception('Failed to redeem booking: $e');
    }
  }

  // Cancel a booking
  Future<Booking> cancelBooking(String bookingId) async {
    try {
      final response =
          await _client
              .from('bookings')
              .update({'status': 'cancelled'})
              .eq('id', bookingId)
              .select()
              .single();

      return Booking.fromJson(response);
    } catch (e) {
      throw Exception('Failed to cancel booking: $e');
    }
  }

  // Get active bookings for a user
  Future<List<Booking>> getActiveBookings(String userId) async {
    try {
      final response = await _client
          .from('bookings')
          .select('*, deals!inner(*), restaurants!inner(*)')
          .eq('user_id', userId)
          .eq('status', 'booked')
          .order('booked_at', ascending: false);

      return (response as List).map((json) => Booking.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch active bookings: $e');
    }
  }

  // Get booking history for a user
  Future<List<Booking>> getBookingHistory(
    String userId, {
    int limit = 50,
    int offset = 0,
  }) async {
    try {
      final response = await _client
          .from('bookings')
          .select('*, deals!inner(*), restaurants!inner(*)')
          .eq('user_id', userId)
          .inFilter('status', ['redeemed', 'cancelled', 'expired'])
          .order('booked_at', ascending: false)
          .range(offset, offset + limit - 1);

      return (response as List).map((json) => Booking.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch booking history: $e');
    }
  }

  // Check if user has already booked a specific deal
  Future<bool> hasUserBookedDeal(String userId, String dealId) async {
    try {
      final response = await _client
          .from('bookings')
          .select('id')
          .eq('user_id', userId)
          .eq('offer_id', dealId)
          .inFilter('status', ['booked', 'redeemed']);

      return (response as List).isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  // Get booking by QR code
  Future<Booking?> getBookingByQRCode(String qrCode) async {
    try {
      final response =
          await _client
              .from('bookings')
              .select('*, deals!inner(*), restaurants!inner(*)')
              .eq('qr_code', qrCode)
              .single();

      return Booking.fromJson(response);
    } catch (e) {
      throw Exception('Failed to fetch booking by QR code: $e');
    }
  }

  // Generate a unique QR code for the booking
  String _generateQRCode() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final random = (timestamp % 10000).toString().padLeft(4, '0');
    return 'DD$timestamp$random';
  }
}
