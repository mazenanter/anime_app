import 'package:anime_app/features/home/presentation/ui/widgets/home/character_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/spacer.dart';
import '../../../../data/repo/anime_repo.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    var list = AnimeRepo().characters;
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) => CharacterItem(characterModel: list[index]),
      separatorBuilder: (context, index) => horizotalSpace(12),
      itemCount: list.length,
    );
  }
}
