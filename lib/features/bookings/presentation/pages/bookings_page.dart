import 'package:flutter/material.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Bookings'),
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).colorScheme.primary,
          unselectedLabelColor: Theme.of(
            context,
          ).colorScheme.onSurface.withOpacity(0.6),
          indicatorColor: Theme.of(context).colorScheme.primary,
          indicatorWeight: 3,
          tabs: const [
            Tab(text: 'Upcoming'),
            Tab(text: 'Past'),
            Tab(text: 'Cancelled'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildUpcomingBookings(),
          _buildPastBookings(),
          _buildCancelledBookings(),
        ],
      ),
    );
  }

  Widget _buildUpcomingBookings() {
    // Mock upcoming bookings
    final upcomingBookings = [
      {
        'restaurant': 'Bistro Paradis',
        'date': 'Today, 7:30 PM',
        'people': '2 people',
        'image':
            'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=400',
        'address': 'Bahnhofstrasse 45, Zurich',
        'status': 'confirmed',
      },
      {
        'restaurant': 'Sushi Zen',
        'date': 'Tomorrow, 6:00 PM',
        'people': '4 people',
        'image':
            'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=400',
        'address': 'Limmatquai 12, Zurich',
        'status': 'pending',
      },
    ];

    if (upcomingBookings.isEmpty) {
      return _buildEmptyState(
        'No Upcoming Bookings',
        'Your upcoming reservations will appear here',
        Icons.calendar_today,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: upcomingBookings.length,
      itemBuilder: (context, index) {
        final booking = upcomingBookings[index];
        return _buildBookingCard(booking, true);
      },
    );
  }

  Widget _buildPastBookings() {
    return _buildEmptyState(
      'No Past Bookings',
      'Your booking history will appear here',
      Icons.history,
    );
  }

  Widget _buildCancelledBookings() {
    return _buildEmptyState(
      'No Cancelled Bookings',
      'Your cancelled reservations will appear here',
      Icons.cancel_outlined,
    );
  }

  Widget _buildEmptyState(String title, String subtitle, IconData icon) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBookingCard(Map<String, String> booking, bool isUpcoming) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Restaurant Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    booking['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey[300],
                        child: const Icon(Icons.restaurant),
                      );
                    },
                  ),
                ),

                const SizedBox(width: 16),

                // Booking Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        booking['restaurant']!,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        booking['date']!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        booking['people']!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),

                // Status Badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color:
                        booking['status'] == 'confirmed'
                            ? Colors.green.withOpacity(0.1)
                            : Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    booking['status']!.toUpperCase(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color:
                          booking['status'] == 'confirmed'
                              ? Colors.green[700]
                              : Colors.orange[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Address
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    booking['address']!,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),

            if (isUpcoming) ...[
              const SizedBox(height: 16),

              // Action Buttons
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // Modify booking
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Modify'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // Cancel booking
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: const BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // View details
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Details'),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
