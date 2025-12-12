import 'package:flutter/material.dart';

enum AppointmentStatus {
  notAttended,
  completed,
  upcoming,
  cancelled,
}

// Reusable Appointment Status Card Widget
class RecordCard extends StatelessWidget {
  final String date;
  final String title;
  final AppointmentStatus status;

  const RecordCard({
    Key? key,
    required this.date,
    required this.title,
    required this.status,
  }) : super(key: key);

  // Get status details based on enum
  Map<String, dynamic> _getStatusDetails() {
    switch (status) {
      case AppointmentStatus.notAttended:
        return {
          'text': 'Not Attended',
          'color': const Color(0xFFFF8C42),
          'icon': Icons.warning_rounded,
        };
      case AppointmentStatus.completed:
        return {
          'text': 'Completed',
          'color': const Color(0xFF00D86A),
          'icon': Icons.check_circle_rounded,
        };
      case AppointmentStatus.upcoming:
        return {
          'text': 'Upcoming',
          'color': const Color(0xFF2196F3),
          'icon': Icons.schedule_rounded,
        };
      case AppointmentStatus.cancelled:
        return {
          'text': 'Cancelled',
          'color': const Color(0xFFE53935),
          'icon': Icons.cancel_rounded,
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusDetails = _getStatusDetails();

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE8E5F2),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          // Date and title
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: date,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3D4A6B),
                    ),
                  ),
                  TextSpan(
                    text: ' - $title',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D4A6B),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),

          // Status with icon
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  statusDetails['icon'],
                  size: 18,
                  color: statusDetails['color'],
                ),
                const SizedBox(width: 6),
                Text(
                  statusDetails['text'],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: statusDetails['color'],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}