import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_untitled/component/text_field/common_text_field.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';

class ExpertChatBotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        height: 100,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      backgroundColor: Color(0xFFE8EEF3),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.h),
              children: [
                AIAvatar(),
                SizedBox(height: 12.h),
                ChatBubble(
                  message:
                      'Soy tu asistente de IA. ¿Qué necesitas redactar o consultar hoy?',
                  isUser: true,
                ),
                SizedBox(height: 16),
                AIAvatar(),
                SizedBox(height: 12),
                ChatBubble(
                  message: '¿Cuánto tarda un trámite laboral en Panamá?',
                  isUser: false,
                ),
                SizedBox(height: 16),
                AIAvatar(),
                SizedBox(height: 12),
                ChatBubble(
                  message:
                      'El tiempo varía según el trámite: una solicitud de permiso de trabajo puede tomar de 15 a 30 días hábiles, y un proceso judicial de 3 a 6 meses, según su complejidad.',
                  isUser: true,
                ),
              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}

// Reusable AI Avatar Widget

class AIAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF3B82F6), Color(0xFF9333EA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          height: 77.42.h,
          width: 77.42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: RadialGradient(colors: [
              
              Color(0xffA26EDA),
              Color(0xff1C1E78),
              Color(0xff7DD1F5),
              Color(0xff009FE3),
            ])
            
          ),
          child: Center(child: Image.asset(AppImages.aiAvatarMiddle),),
        ),
      ),
    );
  }
}

// Reusable Chat Bubble Widget
class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  const ChatBubble({super.key, required this.message, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.85,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isUser ? Colors.white : Color(0xFF2C3E50),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(isUser ? 16 : 4),
            bottomRight: Radius.circular(isUser ? 4 : 16),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          message,
          style: TextStyle(
            fontSize: 14,
            color: isUser ? Color(0xFF1F2937) : Colors.white,
            height: 1.4,
          ),
        ),
      ),
    );
  }
}

// Reusable Chat Input Widget
class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '¿Cuándo se utilizará IA en Panamá?',
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: AppColors.nameTextColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white, size: 14),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF3B82F6),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.mic, color: Colors.white, size: 20),
                    onPressed: () {},
                  ),
                ),


              ],
            ),
          ),
        ),


      ),
    );
  }
}
