import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/themes/colors_manager.dart';
import '../../../../../../core/themes/text_styles_manager.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });
  final String title;
  final bool isActive;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive ? ColorsManager.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            title,
            style: TextStylesManager.font14Bold.copyWith(
              color: isActive ? Colors.white : ColorsManager.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
