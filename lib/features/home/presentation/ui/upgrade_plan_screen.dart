import 'package:anime_app/core/helpers/spacer.dart';
import 'package:anime_app/core/themes/text_styles_manager.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/home/scaffold_background_.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/upgrade_plan/continue_button.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/upgrade_plan/header_title_and_icon.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/upgrade_plan/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SvgPicture.asset('assets/svgs/upgrade_plan_star.svg'),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 160.h),
                  child: SvgPicture.asset(
                    'assets/svgs/upgrade_plan_star_2.svg',
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Column(
                    children: [
                      HeaderTitleAndIcon(),
                      verticalSpace(9),
                      Image.asset(
                        'assets/images/Rocket Boy 1.png',
                        width: 207.w,
                        height: 207.h,
                      ),
                      verticalSpace(4),
                      Text(
                        'Seamless Anime\nExperience, Ad-Free.',
                        style: TextStylesManager.font24Bold,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Enjoy unlimited anime streaming without\ninterruptions.',
                        style: TextStylesManager.font14Medium,
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace(39),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.0.h),
                        child: Column(
                          children: [
                            PlanCard(
                              title: 'Monthly',
                              price: '5 USD',
                              plan: 'Month',
                              subtitle: 'Include Family Sharing',
                            ),
                            verticalSpace(16),
                            PlanCard(
                              title: 'Annually',
                              plan: 'Year',
                              subtitle: 'Include Family Sharing',
                              price: '50 USD',
                              isAnnually: true,
                            ),
                            verticalSpace(37),
                            ContinueButton(),
                            verticalSpace(35),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
