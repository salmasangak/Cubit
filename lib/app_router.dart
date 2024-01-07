import 'package:flutter/material.dart';
import 'package:task/bussiens_logic/cubit_cubit.dart';
import 'package:task/data/web_servies/characters_web_servies.dart';
import 'package:task/presention/screens/characters_details.dart';
import 'package:task/presention/screens/characters_screen.dart';
import 'constants/strings.dart';
import 'data/respoistry/character_respoistry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppRouter {
  late Charactersrespoistry charactersRepoistry;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepoistry = Charactersrespoistry(CharactersWebServies());
    charactersCubit = CharactersCubit(charactersRepoistry);
  }


  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen :
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (BuildContext) =>CharactersCubit(charactersRepoistry),
              child: const CharactersScreen(),

        ));
    case characterDetailsScreen :
    return MaterialPageRoute(builder:(_) => const CharacterDetailsScreen());
    }
    return null;
    }

}