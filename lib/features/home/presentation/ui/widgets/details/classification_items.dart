import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/themes/colors_manager.dart';
import '../../../../../../core/themes/text_styles_manager.dart';

class ClassificationItems extends StatelessWidget {
  const ClassificationItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.w,
      children: [
        Chip(
          backgroundColor: ColorsManager.classificationColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.r),
          ),
          shadowColor: Colors.black,
          side: BorderSide(width: 0),
          label: Text(
            'Dark Fantasy',
            style: TextStylesManager.font12Medium.copyWith(color: Colors.white),
          ),
        ),
        Chip(
          backgroundColor: ColorsManager.classificationColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.r),
          ),
          shadowColor: Colors.black,
          side: BorderSide(width: 0),
          label: Text(
            'Action',
            style: TextStylesManager.font12Medium.copyWith(color: Colors.white),
          ),
        ),
        Chip(
          backgroundColor: ColorsManager.classificationColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.r),
          ),
          shadowColor: Colors.black,
          side: BorderSide(width: 0),
          label: Text(
            'Adventure',
            style: TextStylesManager.font12Medium.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
