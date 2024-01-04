import 'package:task/data/web_servies/characters_web_servies.dart';

import '../model/characters.dart';

class Charactersrespoistry{
  CharactersWebServies charactersWebServies;
  Charactersrespoistry(this.charactersWebServies);

  Future<List<Character>> getAllCharacters() async{
    final characters = await charactersWebServies.getAllCharacters();
    return characters.map((character) => Character.fromjson(character)).toList();
  }
}