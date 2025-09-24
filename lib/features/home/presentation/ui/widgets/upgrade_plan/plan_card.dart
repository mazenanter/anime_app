import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacer.dart';
import '../../../../../../core/themes/colors_manager.dart';
import '../../../../../../core/themes/text_styles_manager.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.title,
    required this.plan,
    required this.subtitle,

    required this.price,

    this.isAnnually = false,
  });
  final String title, price, plan, subtitle;
  final bool isAnnually;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isAnnually ? Colors.white : ColorsManager.titleColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow:
            isAnnually
                ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.09),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ]
                : [],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/monthly_plan.png',
            width: 108.w,
            height: 108.h,
          ),
          horizotalSpace(22),
          Expanded(
            child: Column(
              spacing: 8.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStylesManager.font16Bold.copyWith(
                          color:
                              isAnnually
                                  ? ColorsManager.titleColor
                                  : Colors.white,
                        ),
                      ),
                    ),

                    Icon(
                      isAnnually
                          ? Icons.check_circle_outlined
                          : Icons.check_circle,
                      color:
                          isAnnually
                              ? ColorsManager.titleColor
                              : ColorsManager.primaryColor,
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: '\$$price ',
                    style: TextStylesManager.font14Bold.copyWith(
                      color:
                          isAnnually ? ColorsManager.titleColor : Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '/$plan',
                        style: TextStylesManager.font14Bold.copyWith(
                          color: Color(0xffA49AD8),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStylesManager.font14Bold.copyWith(
                    color: Color(0xffA49AD8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
