import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoverAndLogo extends StatelessWidget {
  const CoverAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset('assets/images/details_image.png'),
        Positioned(
          bottom: -65.h,
          child: Image.asset(
            'assets/images/demon_slayer.png',
            width: 193.w,
            height: 146.16864013671875.h,
          ),
        ),
      ],
    );
  }
}
