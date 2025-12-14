import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_untitled/component/text/common_text.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/citizen_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/screen/chat_bot_screen/chat_to_lawyer_screen.dart';

// Assuming these are custom widgets you have defined:
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/widget/active_card.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/widget/not_attend_card.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/widget/record_card.dart';
import 'package:new_untitled/features/category_dash_board/citizen/citizen_bottom_nav/presentation/widget/served_card.dart';

// Other necessary imports (kept for structural integrity)
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/lawyer_bottom_nav_screen.dart';

// NOTE: CasesScreenController is no longer needed here, but keeping the import
// for completeness if other parts of the app use it.
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/controller/cases_screen_controller.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/screen/cases_screen/lawyer_case_details_screen.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/widget/active_section_card.dart';
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/widget/closed_section_card.dart'
    hide AppColors;
import 'package:new_untitled/features/category_dash_board/lawyer/lawyer_bottom_nav/presentation/widget/new_section_card.dart';
import '../../../../../../../component/curved_background_widget/home_bottom_curved_app_bar.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../home/citizen_home_screen.dart';


class CitizenCasesScreen extends StatefulWidget {
  const CitizenCasesScreen({super.key});

  @override
  State<CitizenCasesScreen> createState() => _CitizenCasesScreenState();
}

class _CitizenCasesScreenState extends State<CitizenCasesScreen> {
  // New state variables for managing tab selection and PageView
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    // Initialize PageController
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  void dispose() {
    // Dispose the PageController
    pageController.dispose();
    super.dispose();
  }

  // Function to handle tab selection (combines changeIndex and update)
  void changeIndex(int index) {
    if (index < 0 || index > 4) return; // 5 tabs (0-4)

    setState(() {
      selectedIndex = index;
    });

    // Animate the PageView
    if (pageController.hasClients) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> onTapCaseItem() async {
    Get.to(() => CaseDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    // REMOVED: GetBuilder<CitizenCasesScreenController>
    return Scaffold(
      appBar: HomeBottomCurvedAppBar(
        onLeadingPressed: () => Get.to(() => CitizenHomeScreen()),
        onBackPressed: () => Get.back(),
        height: 140,
        backgroundColor: AppColors.backgroundColor,
        backImage: AppImages.back,
        leadingImage: AppImages.appBarHome,
        actionImage: AppImages.language,
        middleImage: AppImages.appLogo,
      ),
      bottomNavigationBar: CitizenBottomNavBar(currentIndex: 2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Row(
                children: [
                  Image.asset(AppImages.files, height: 26.w, width: 26.w),
                  SizedBox(width: 8.w),
                  CommonText(
                    text: "MY CASES",
                    fontSize: 24,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
            CommonText(
              text: 'Check the status of your legal cases.',
              fontWeight: FontWeight.w500,
              color: Color(0xff458AFF),
            ),
            SizedBox(height: 40.h),

            // Tab Buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Active Tab (Index 0)
                  InkWell(
                    onTap: () => changeIndex(0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonText(
                          text: 'Active',
                          fontSize: 16,
                          color:
                              selectedIndex == 0
                                  ? Colors.green
                                  : AppColors.nameTextColor,
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 2,
                          width: 35.w,
                          color:
                              selectedIndex == 0
                                  ? Colors.green
                                  : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w),

                  // Served Tab (Index 1)
                  InkWell(
                    onTap: () => changeIndex(1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonText(
                          text: 'Served',
                          fontSize: 16,
                          color:
                              selectedIndex == 1
                                  ? Colors.blue
                                  : AppColors.nameTextColor,
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 2,
                          width: 35.w,
                          color:
                              selectedIndex == 1
                                  ? Colors.blue
                                  : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w),

                  // Not attended Tab (Index 2)
                  InkWell(
                    onTap: () => changeIndex(2),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonText(
                          text: "Not attended",
                          fontSize: 16,
                          color:
                              selectedIndex == 2
                                  ? Colors.red
                                  : AppColors.nameTextColor,
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 2,
                          width: 35.w,
                          color:
                              selectedIndex == 2
                                  ? Colors.red
                                  : Colors.transparent,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),

                  // Record Tab (Index 3)
                  InkWell(
                    onTap: () => changeIndex(3),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonText(
                          text: "Record",
                          fontSize: 16,
                          color:
                              selectedIndex == 3
                                  ? Color(0xff5826e6)
                                  : AppColors.nameTextColor,
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 2,
                          width: 35.w,
                          color:
                              selectedIndex == 3
                                  ? Color(0xff5826e6)
                                  : Colors.transparent,
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),

            // PageView Content
            Expanded(
              child: PageView(
                // Use the local PageController
                controller: pageController,

                onPageChanged: (index) {
                  // Update the state when the page is swiped
                  setState(() {
                    selectedIndex = index;
                  });
                  // Removed: controller.changeIndex(index);
                },
                // PageView has 4 children, but 5 tabs (0-4). I've added a placeholder for the 5th tab.
                children: [
                  // Page 0: Active
                  Column(
                    children: [
                      SizedBox(height: 45.h),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(height: 20),
                                ChatCard(
                                  attorneyName: 'Lic.maris gonzalez',
                                  topic: "Unfair dismissal",
                                  lastMessage:
                                      " I recommend you gather your contract documents…",
                                  lastChatTime: "Yesterday",
                                  onContinueChat: () => ChatToLawyerScreen(),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  // Page 1: Served
                  Column(
                    children: [
                      SizedBox(height: 45.h),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(height: 20),
                                ServedChatCard(
                                  attorneyName: 'Attorney: Lic. María González',
                                  topic: "Topic: Unfair Dismissal",
                                  lastMessage:
                                      'Last message: I recommend you gather your contract documents…',
                                  lastChatTime: 'Last chat: Yesterday',
                                  onContinueChat: () {
                                    print('See details button clicked');
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  // Page 2: Not attended
                  Column(
                    children: [
                      SizedBox(height: 45.h),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(height: 20),
                                NotAttendedCard(
                                  topic: 'Family lawy Alimony',
                                  status: 'No lawyer found available',
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  // Page 3: Record
                  Column(
                    children: [
                      SizedBox(height: 45.h),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(height: 20),
                                RecordCard(
                                  date: '12/122025',
                                  title: 'Contact Review',
                                  status: AppointmentStatus.completed,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  // Page 4: Record (Placeholder for the 5th tab, since only 4 pages were originally defined)
                  Column(
                    children: [
                      SizedBox(height: 45.h),
                      Expanded(
                        child: Center(
                          child: CommonText(
                            text: "Extra Record Page Content",
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
