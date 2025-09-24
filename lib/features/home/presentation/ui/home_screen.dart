import 'package:anime_app/core/helpers/spacer.dart';
import 'package:anime_app/core/themes/text_styles_manager.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/home/anime_list.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/home/category_list.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/home/characters_list.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/home/custom_bottom_nav_bar.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/home/scaffold_background_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ScaffoldBackground(
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: SvgPicture.asset(
                  'assets/svgs/Star 1.svg',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.w, top: 28.h),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Where Anime Comes Alive',
                        style: TextStylesManager.font24Bold,
                      ),
                      verticalSpace(24),
                      SizedBox(height: 28.h, child: CategoriesList()),
                      verticalSpace(20),
                      SizedBox(height: 300.h, child: AnimeList()),
                      verticalSpace(24),
                      Text(
                        'Top Characters',
                        style: TextStylesManager.font24Bold,
                      ),
                      verticalSpace(24),
                      SizedBox(height: 170.h, child: CharactersList()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
