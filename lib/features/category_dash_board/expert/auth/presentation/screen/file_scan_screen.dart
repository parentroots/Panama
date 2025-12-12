import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:new_untitled/component/app_bar/common_app_bar.dart';
import 'package:new_untitled/component/button/common_button.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

class FileScanScreen extends StatefulWidget {
  const FileScanScreen({Key? key}) : super(key: key);

  @override
  State<FileScanScreen> createState() => _FileScanScreenState();
}

class _FileScanScreenState extends State<FileScanScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scanAnimation;

  XFile? capturedImage; // --> camera image store

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

    _openCamera();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _openCamera() async {
    final ImagePicker picker = ImagePicker();

    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      setState(() {
        capturedImage = photo;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CommonAppBar(
          leadingIcon: AppImages.back,
          onTap: () {
            Get.back();
          },
        ),
      ),
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
          // Document preview / scanned image
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
              child:
                  capturedImage == null
                      ? _defaultDocumentPreview() // আগের ডিজাইন
                      : Image.file(
                        File(capturedImage!.path),
                        fit: BoxFit.cover,
                      ),
            ),
          ),

          // Corner brackets
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
                Center(
                  child: Container(
                    width: 30,
                    height: 2,
                    color: const Color(0xFFFFD700),
                  ),
                ),
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

  Widget _defaultDocumentPreview() {
    return Container(
      color: Colors.grey[300],
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'How You Really Pull Out of the SBA Shortcut?',
            style: TextStyle(
              fontSize: 8,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Under a new, unilateral program...',
            style: TextStyle(fontSize: 8, color: Colors.black87),
          ),
          SizedBox(height: 12),
          Text(
            'What sort you do with SBA Shortcut?',
            style: TextStyle(
              fontSize: 8,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'When you enroll in the shortcut...',
            style: TextStyle(fontSize: 8, color: Colors.black87),
          ),
        ],
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
          onTap: () async {
            final ImagePicker picker = ImagePicker();
            final XFile? image = await picker.pickImage(
              source: ImageSource.gallery,
            );
            if (image != null) {
              setState(() {
                capturedImage = image;
              });
            }
          },
        ),
      ),
    );
  }
}

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

    // Top-left
    Path topLeft = Path();
    topLeft.moveTo(0, cornerLength);
    topLeft.lineTo(0, cornerRadius);
    topLeft.quadraticBezierTo(0, 0, cornerRadius, 0);
    topLeft.lineTo(cornerLength, 0);
    canvas.drawPath(topLeft, paint);

    // Top-right
    Path topRight = Path();
    topRight.moveTo(size.width - cornerLength, 0);
    topRight.lineTo(size.width - cornerRadius, 0);
    topRight.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    topRight.lineTo(size.width, cornerLength);
    canvas.drawPath(topRight, paint);

    // Bottom-left
    Path bottomLeft = Path();
    bottomLeft.moveTo(0, size.height - cornerLength);
    bottomLeft.lineTo(0, size.height - cornerRadius);
    bottomLeft.quadraticBezierTo(0, size.height, cornerRadius, size.height);
    bottomLeft.lineTo(cornerLength, size.height);
    canvas.drawPath(bottomLeft, paint);

    // Bottom-right
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
