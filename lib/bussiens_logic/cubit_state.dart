part of 'cubit_cubit.dart';

@immutable
abstract class State {}

class Initial extends State {}

class CharactersLoaded extends State{
  final List< Character > characters;
  CharactersLoaded(this.characters);
}