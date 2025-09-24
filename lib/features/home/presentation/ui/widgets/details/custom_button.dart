import 'package:anime_app/core/themes/text_styles_manager.dart';
import 'package:anime_app/features/home/presentation/ui/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/themes/colors_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.title,
    this.ButtonColor,
  });
  final String icon, title;
  final Color? ButtonColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ButtonColor ?? ColorsManager.primaryColor,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UpgradePlanScreen()),
        );
      },
      child: Row(
        spacing: 6.w,
        children: [
          SvgPicture.asset(icon),
          Text(title, style: TextStylesManager.font15SemiBold),
        ],
      ),
    );
  }
}
