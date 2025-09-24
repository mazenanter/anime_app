import 'package:anime_app/core/helpers/spacer.dart';
import 'package:anime_app/core/themes/colors_manager.dart';
import 'package:anime_app/features/home/presentation/ui/widgets/details/custom_button.dart';
import 'package:flutter/material.dart';

class WatchAndPreviewButtons extends StatelessWidget {
  const WatchAndPreviewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          icon: 'assets/svgs/stopwatch.svg',
          title: 'Preview',
          ButtonColor: ColorsManager.classificationColor,
        ),
        horizotalSpace(16),
        CustomButton(icon: 'assets/svgs/eye2.svg', title: 'Watch Now'),
      ],
    );
  }
}
