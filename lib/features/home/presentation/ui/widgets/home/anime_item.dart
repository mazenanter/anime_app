import 'package:anime_app/features/home/data/models/anime_model.dart';
import 'package:anime_app/features/home/presentation/ui/details_screen.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/home/rate_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacer.dart';
import '../../../../../../core/themes/colors_manager.dart';
import '../../../../../../core/themes/text_styles_manager.dart';

class AnimeItem extends StatelessWidget {
  const AnimeItem({super.key, required this.animeModel});
  final AnimeModel animeModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen()),
        );
      },
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  animeModel.imageUrl,
                  height: 245.h,
                  width: 184.w,
                  fit: BoxFit.fill,
                ),
              ),
              RateContainer(),
            ],
          ),
          verticalSpace(8),
          Text(
            animeModel.title,
            style: TextStylesManager.font14Bold.copyWith(
              color: ColorsManager.titleColor,
            ),
          ),
          verticalSpace(4),
          Text(animeModel.subTitle, style: TextStylesManager.font12Medium),
        ],
      ),
    );
  }
}
