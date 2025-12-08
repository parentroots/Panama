import 'package:flutter/material.dart';
import 'package:new_untitled/utils/constants/app_colors.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key,this.title='',  this.leadingIcon='', required this.onTap, });

  final String title;
  final String leadingIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: AppBar(
        title: Text(title),
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
                leadingIcon),
          ),
        ),
        backgroundColor: AppColors.commonButtonColor,
      ),
    );
  }
}
