import 'package:anime_app/features/home/presentation/ui/widgets/home/anime_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/spacer.dart';
import '../../../../data/repo/anime_repo.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    var list = AnimeRepo().animies;
    return ListView.separated(
      separatorBuilder: (context, index) => horizotalSpace(8),
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => AnimeItem(animeModel: list[index]),
    );
  }
}
