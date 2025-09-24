import 'package:anime_app/core/themes/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 7.w,
      children: [
        Image.asset('assets/images/fire.png', width: 29.w, height: 32.h),
        Expanded(
          child: Text(
            'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',

            style: TextStylesManager.font14Medium,
          ),
        ),
      ],
    );
  }
}
