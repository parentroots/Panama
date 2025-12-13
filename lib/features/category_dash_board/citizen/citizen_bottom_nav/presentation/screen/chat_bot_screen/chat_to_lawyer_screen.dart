import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_untitled/component/app_bar/home_screen_app_bar.dart';
import 'package:new_untitled/component/curved_background_widget/home_bottom_curved_app_bar.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/citizen_bottom_nav_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';
import 'package:new_untitled/utils/constants/app_images.dart';

import '../../../../../expert/expert_bottom_nav/expert_bottom_nav_screen.dart';
import '../../../../home/citizen_home_screen.dart';

class ChatToLawyerScreen extends StatefulWidget {
  const ChatToLawyerScreen({super.key});

  @override
  State<ChatToLawyerScreen> createState() => _ChatToLawyerScreenState();
}

class _ChatToLawyerScreenState extends State<ChatToLawyerScreen> {
  final TextEditingController messageTEController = TextEditingController();

  List<Map<String, dynamic>> messageList = [];
  bool isTyping = false;

  @override
  void initState() {
    super.initState();

    messageTEController.addListener(() {
      setState(() {
        isTyping = messageTEController.text.trim().isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9F0F7),
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: ()=>Get.to(CitizenHomeScreen()),
        onBackPressed: ()=>Get.back(),
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      bottomNavigationBar: const CitizenBottomNavBar(currentIndex: 0),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xff458AFF),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(100),
                    child: Image.asset(
                      height: 50.h,
                      width: 50.h,
                      AppImages.carlos,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: 'Johan Torres',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: Color(0xff14F056),
                              shape: BoxShape.circle,
                            ),
                          ),

                          SizedBox(width: 10.w),

                          Text('Online',style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFFFFFFF)
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15.h,),

          Expanded(
            child: ListView.builder(
              itemCount: messageList.length,
              itemBuilder: (context, int index) {
                final msg = messageList[index];
                return msg['type'] == "user"
                    ? _UserMessage(text: msg['message'])
                    : _BotMessage(text: msg['message']);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageTEController,
                    decoration: InputDecoration(
                      hintText: "Type message",
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      prefixIcon: Icon(Icons.emoji_emotions_outlined),

                      suffixIcon: SizedBox(
                        width: isTyping ? 40 : 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (!isTyping) ...[
                              Icon(Icons.attach_file),
                              SizedBox(width: 10.h),
                              InkWell(
                                onTap: onTapCameraButton,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                            if (isTyping)
                              IconButton(
                                icon: const Icon(Icons.send),
                                onPressed: () {
                                  onTapSendButton();
                                },
                              ),
                          ],
                        ),
                      ),

                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.mic, size: 22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapSendButton() {
    messageList.add({'type': "bot", 'message': messageTEController.text});
    messageTEController.clear();

    if (mounted) {
      setState(() {});
    }
  }

  Future<void> onTapCameraButton() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    messageTEController.dispose();
  }
}

class _BotMessage extends StatelessWidget {
  final String text;

  const _BotMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(text, style: const TextStyle(fontSize: 16)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UserMessage extends StatelessWidget {
  final String text;

  const _UserMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
