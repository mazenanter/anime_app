import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/themes/text_styles_manager.dart';

class HeaderTitleAndIcon extends StatelessWidget {
  const HeaderTitleAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Text('Upgrade Plan', style: TextStylesManager.font22Bold),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(right: 32.w),
          child: SvgPicture.asset('assets/svgs/cancel.svg'),
        ),
      ],
    );
  }
}
