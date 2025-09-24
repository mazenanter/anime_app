import 'package:anime_app/features/home/presentation/ui/widgets/home/category_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/repo/anime_repo.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final list = AnimeRepo().categoryTitles;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder:
          (context, index) => IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.only(right: 4),
              child: CategoryItem(
                title: list[index],
                isActive: activeIndex == index,
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
              ),
            ),
          ),
    );
  }
}
