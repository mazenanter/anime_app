import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/themes/text_styles_manager.dart';

class AnimeInfoItem extends StatelessWidget {
  const AnimeInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Row(
          spacing: 7.w,
          children: [
            SvgPicture.asset('assets/svgs/eye.svg'),
            Text('2.3M views', style: TextStylesManager.font14Regular),
          ],
        ),
        Row(
          spacing: 7.w,
          children: [
            SvgPicture.asset('assets/svgs/hands_clapping.svg'),
            Text('2K clap', style: TextStylesManager.font14Regular),
          ],
        ),
        Row(
          spacing: 7.w,
          children: [
            Icon(Icons.storm_outlined, color: Color(0xffD2C8C8)),
            Text('4 Seasons', style: TextStylesManager.font14Regular),
          ],
        ),
      ],
    );
  }
}
