import 'package:anime_app/core/helpers/spacer.dart';
import 'package:anime_app/core/themes/colors_manager.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/details/anime_info_item.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/details/classification_items.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/details/cover_and_logo.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/details/description_item.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/details/watch_and_preview_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff2C1E51),
              gradient: LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [
                  Color(0xff4B284D),

                  Color(0xff2C1E51),
                  Color(0xff2C1E51),
                  Color(0xff2C1E51),
                  Color(0xff2C1E51),
                  Color(0xff4B284D),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(children: [CoverAndLogo()]),
                  verticalSpace(76),
                  ClassificationItems(),
                  verticalSpace(10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.w),
                    child: Column(
                      children: [
                        Divider(color: ColorsManager.dividerColor),
                        AnimeInfoItem(),
                        Divider(color: ColorsManager.dividerColor),
                        verticalSpace(22),
                        DescriptionItem(),
                        verticalSpace(100),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              color: ColorsManager.darkBlue,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: WatchAndPreviewButtons(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
