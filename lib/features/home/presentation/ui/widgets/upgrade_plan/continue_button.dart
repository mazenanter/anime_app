import 'package:anime_app/core/themes/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/themes/colors_manager.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 46.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.primaryColor,
        ),
        onPressed: () {},
        child: Text('Continue', style: TextStylesManager.font16Bold),
      ),
    );
  }
}
