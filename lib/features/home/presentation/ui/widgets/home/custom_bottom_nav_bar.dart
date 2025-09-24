import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../../../core/themes/colors_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: GNav(
          gap: 6.w,
          color: Colors.grey[600],
          activeColor: Colors.white,
          tabBackgroundColor: ColorsManager.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          tabs: [
            GButton(
              icon: Icons.circle,
              text: 'Home',
              leading: SvgPicture.asset('assets/svgs/home-2.svg', height: 22.h),
            ),
            GButton(
              icon: Icons.circle,
              text: 'Building',
              leading: SvgPicture.asset(
                'assets/svgs/building.svg',
                height: 22.h,
              ),
            ),
            GButton(
              icon: Icons.circle,
              text: 'Search',
              leading: SvgPicture.asset(
                'assets/svgs/search-normal.svg',
                height: 22,
              ),
            ),
            GButton(
              icon: Icons.circle,
              text: 'Network',
              leading: SvgPicture.asset(
                'assets/svgs/network.svg',
                height: 22.h,
              ),
            ),
            GButton(
              icon: Icons.circle,
              text: 'Setting',
              leading: SvgPicture.asset(
                'assets/svgs/setting.svg',
                height: 22.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
