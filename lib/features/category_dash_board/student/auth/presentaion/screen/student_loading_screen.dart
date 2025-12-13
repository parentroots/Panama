import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'dart:math' as math;

import 'package:new_untitled/features/category_dash_board/student/auth/presentaion/screen/student_pending_validation_screen.dart';

class StudentPaymentLoadingScreen extends StatefulWidget {
  const StudentPaymentLoadingScreen({super.key});

  @override
  State<StudentPaymentLoadingScreen> createState() => _StudentPaymentLoadingScreenState();
}

class _StudentPaymentLoadingScreenState extends State<StudentPaymentLoadingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    )..repeat();

    Future.delayed(Duration(seconds: 3), () {
       Get.to(StudentPendingValidationScreen());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              size: Size(100, 100),
              painter: LoadingDotsPainter(_controller.value),
            );
          },
        ),
      ),
    );
  }
}

class LoadingDotsPainter extends CustomPainter {
  final double animationValue;

  LoadingDotsPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;
    final dotRadius = 8.0;
    final numberOfDots = 9;

    for (int i = 0; i < numberOfDots; i++) {
      // Create a J-shaped curve (starts from top, curves down and to the right)
      final angle = (i / numberOfDots) * math.pi * 1.2 - math.pi * 0.6;

      // Calculate position on the arc
      final x = center.dx + radius * math.cos(angle);
      final y = center.dy + radius * math.sin(angle);

      // Create wave effect - each dot lights up in sequence
      final dotDelay = i / numberOfDots;
      final dotAnimation = (animationValue - dotDelay) % 1.0;

      // Make the active dot brighter
      double opacity;
      if (dotAnimation < 0.3) {
        // Fade in
        opacity = dotAnimation / 0.3;
      } else if (dotAnimation < 0.7) {
        // Stay bright
        opacity = 1.0;
      } else {
        // Fade out
        opacity = 1.0 - ((dotAnimation - 0.7) / 0.3);
      }

      opacity = opacity.clamp(0.2, 1.0);

      paint.color = Color(0xFF5B9FED).withOpacity(opacity);

      canvas.drawCircle(Offset(x, y), dotRadius, paint);
    }
  }

  @override
  bool shouldRepaint(LoadingDotsPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}