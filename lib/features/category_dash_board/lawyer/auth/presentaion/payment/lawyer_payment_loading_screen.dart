import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/auth/presentaion/payment/lawyer_pending_validation_screen.dart';
import 'dart:math' as math;


class LawyerPaymentLoadingScreen extends StatefulWidget {
  const LawyerPaymentLoadingScreen({super.key});

  @override
  State<LawyerPaymentLoadingScreen> createState() => _LawyerPaymentLoadingScreenState();
}

class _LawyerPaymentLoadingScreenState extends State<LawyerPaymentLoadingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();

    Future.delayed(Duration(seconds: 2), () {
      Get.to(LawyerPendingValidationScreen());
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
              size: Size(80, 80),
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
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2.5;
    final dotRadius = 6.0;
    final numberOfDots = 9;

    for (int i = 0; i < numberOfDots; i++) {
      final angle = (i / numberOfDots) * math.pi * 1.5 - math.pi / 2;
      final offset = animationValue * 2 * math.pi;

      // Calculate opacity based on animation progress
      final dotProgress = ((animationValue * numberOfDots) - i) % numberOfDots / numberOfDots;
      final opacity = (dotProgress * 0.7 + 0.3).clamp(0.0, 1.0);

      // Calculate position on the arc
      final x = center.dx + radius * math.cos(angle + offset);
      final y = center.dy + radius * math.sin(angle + offset);

      paint.color = Colors.blue.withOpacity(opacity);

      canvas.drawCircle(Offset(x, y), dotRadius, paint);
    }
  }

  @override
  bool shouldRepaint(LoadingDotsPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}