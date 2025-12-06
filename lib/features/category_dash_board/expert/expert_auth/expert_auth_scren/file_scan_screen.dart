import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:math' as math;

import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';

class FileScanScreen extends StatefulWidget {
  const FileScanScreen({Key? key}) : super(key: key);

  @override
  State<FileScanScreen> createState() => _FileScanScreenState();
}

class _FileScanScreenState extends State<FileScanScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scanAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _scanAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),

                const Text(
                  'Document Scanner',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const Spacer(),

                _buildScannerFrame(),

                const Spacer(),


                _buildUploadButton(),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScannerFrame() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Document preview with shadow
          Container(
            width: 280,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 30,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDocumentText(
                      'How You Really Pull Out of the SBA Shortcut?',
                      bold: true,
                    ),
                    const SizedBox(height: 12),
                    _buildDocumentText(
                      'Under a new, unilateral program from the Small Business Administration, you can simply declare the funds used by calling into the SBA hotline. Borrowers simply simply acknowledge that they did take out a loan and that they used the entire loan amount for eligible expenses during the first eight-week covered period.',
                    ),
                    const SizedBox(height: 12),
                    _buildDocumentText(
                      'What sort you do with SBA Shortcut?',
                      bold: true,
                    ),
                    const SizedBox(height: 8),
                    _buildDocumentText(
                      'When you enroll in the shortcut, you\'ll get a call from the SBA. You\'ll tell the representative that you used the full loan for eligible expenses such as payroll, rent and utilities.',
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Corner brackets overlay
          CustomPaint(
            size: const Size(280, 380),
            painter: CornerBracketsPainter(),
          ),

          // Scanning animation line
          AnimatedBuilder(
            animation: _scanAnimation,
            builder: (context, child) {
              return Positioned(
                top: 380 * _scanAnimation.value,
                child: Container(
                  width: 280,
                  height: 2,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        const Color(0xFFFFD700).withOpacity(0.8),
                        Colors.transparent,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFFFD700).withOpacity(0.5),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          // Center focus icon
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFFFD700), width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                // Horizontal line
                Center(
                  child: Container(
                    width: 30,
                    height: 2,
                    color: const Color(0xFFFFD700),
                  ),
                ),
                // Vertical line
                Center(
                  child: Container(
                    width: 2,
                    height: 30,
                    color: const Color(0xFFFFD700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentText(String text, {bool bold = false}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 8,
        color: Colors.black87,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        height: 1.3,
      ),
    );
  }

  Widget _buildUploadButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: CommonButton(
          buttonColor: AppColors.backgroundColor,
          titleText: "Upload from gallery",
        ),
      ),
    );
  }
}

// Custom painter for corner brackets

class CornerBracketsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = const Color(0xFFFFD700)
          ..strokeWidth = 3
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke;

    const cornerLength = 40.0;
    const cornerRadius = 12.0;

    // Top-left corner
    Path topLeft = Path();
    topLeft.moveTo(0, cornerLength);
    topLeft.lineTo(0, cornerRadius);
    topLeft.quadraticBezierTo(0, 0, cornerRadius, 0);
    topLeft.lineTo(cornerLength, 0);
    canvas.drawPath(topLeft, paint);

    // Top-right corner
    Path topRight = Path();
    topRight.moveTo(size.width - cornerLength, 0);
    topRight.lineTo(size.width - cornerRadius, 0);
    topRight.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    topRight.lineTo(size.width, cornerLength);
    canvas.drawPath(topRight, paint);

    // Bottom-left corner
    Path bottomLeft = Path();
    bottomLeft.moveTo(0, size.height - cornerLength);
    bottomLeft.lineTo(0, size.height - cornerRadius);
    bottomLeft.quadraticBezierTo(0, size.height, cornerRadius, size.height);
    bottomLeft.lineTo(cornerLength, size.height);
    canvas.drawPath(bottomLeft, paint);

    // Bottom-right corner
    Path bottomRight = Path();
    bottomRight.moveTo(size.width - cornerLength, size.height);
    bottomRight.lineTo(size.width - cornerRadius, size.height);
    bottomRight.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height - cornerRadius,
    );
    bottomRight.lineTo(size.width, size.height - cornerLength);
    canvas.drawPath(bottomRight, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// Diagonal line painter
class DiagonalLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.white.withOpacity(0.1)
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
