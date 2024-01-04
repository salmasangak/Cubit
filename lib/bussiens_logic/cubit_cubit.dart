import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/data/model/characters.dart';
import '../data/respoistry/character_respoistry.dart';
part 'cubit_state.dart';

class CharactersCubit extends Cubit<State> {
  final Charactersrespoistry  charactersRespoistry;
  late List<Character>characters;

  CharactersCubit(this.charactersRespoistry) : super(Initial());

  List<Character>getAllCharacters(){
    charactersRespoistry.getAllCharacters().then((characters){
      emit(CharactersLoaded(characters));
      this.characters=characters;
    });
     return characters;
  }
}
