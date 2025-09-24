import 'package:flutter/material.dart';

import '../../../../../../core/themes/colors_manager.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsManager.lighterThanPurple,
            ColorsManager.lighterThanPurple,
            Colors.white,
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: child,
    );
  }
}
