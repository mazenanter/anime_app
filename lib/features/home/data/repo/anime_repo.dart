import 'package:anime_app/features/home/data/models/anime_model.dart';
import 'package:anime_app/features/home/data/models/character_model.dart';

class AnimeRepo {
  List<String> categoryTitles = ['All', 'Popular', 'Trending', 'New Releases'];
  List<AnimeModel> animies = [
    AnimeModel(
      imageUrl: 'assets/images/conan.png',
      title: 'Detective Conan',
      subTitle: 'Mystery',
    ),
    AnimeModel(
      imageUrl: 'assets/images/hunter.png',
      title: 'Hunter x Hunter',
      subTitle: 'Adventure',
    ),
  ];

  List<CharacterModel> characters = [
    CharacterModel(
      imageUrl: 'assets/images/hunter_char.png',
      title: 'Gon Freecss',
      name: 'Hunter x Hunter',
    ),
    CharacterModel(
      imageUrl: 'assets/images/naruto_char.png',
      title: 'Naruto Uzumaki',
      name: 'Naruto',
    ),
    CharacterModel(
      imageUrl: 'assets/images/piece_char.png',
      title: 'Luffy',
      name: 'One Piece',
    ),
  ];
}
