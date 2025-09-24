import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/themes/colors_manager.dart';
import '../../../../../../core/themes/text_styles_manager.dart';

class RateContainer extends StatelessWidget {
  const RateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 23.w),
      child: Container(
        alignment: Alignment.center,
        width: 45.w,
        height: 23.h,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          spacing: 4.w,
          children: [
            Icon(Icons.star, color: ColorsManager.primaryColor, size: 12.w),
            Text('5.0', style: TextStylesManager.font12SemiBold),
          ],
        ),
      ),
    );
  }
}
