import 'package:anime_app/features/home/data/models/character_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacer.dart';
import '../../../../../../core/themes/text_styles_manager.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.characterModel});
  final CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          characterModel.imageUrl,
          fit: BoxFit.fill,
          width: 92.w,
          height: 92.h,
        ),
        verticalSpace(10),
        Text(characterModel.title, style: TextStylesManager.font16SemiBold),
        verticalSpace(6),
        Text(characterModel.name, style: TextStylesManager.font14SemiBold),
      ],
    );
  }
}
