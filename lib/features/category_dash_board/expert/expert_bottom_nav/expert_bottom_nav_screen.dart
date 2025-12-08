import 'package:flutter/material.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/chat_bot_screen/expert_chat_bot_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/important_articles_screen/expert_important_articles_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/library_screen/expert_library_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/profile_screen/profile_screen.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';

class ExpertBottomNavScreen extends StatefulWidget {
  const ExpertBottomNavScreen({super.key});

  @override
  State<ExpertBottomNavScreen> createState() => _ExpertBottomNavScreenState();
}

class _ExpertBottomNavScreenState extends State<ExpertBottomNavScreen> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screens = [
    ExpertChatBotScreen(),
    ExpertImportantArticlesScreen(),
    ExpertLibraryScreen(),
    ExpertProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.bottomNavSelectedColor,
        unselectedItemColor: AppColors.nameTextColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'articles'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
