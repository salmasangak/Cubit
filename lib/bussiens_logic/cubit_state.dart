part of 'cubit_cubit.dart';


abstract class CharactersState {}

class Initial extends CharactersState {}

class CharactersLoaded extends CharactersState{
  final List< Character > characters;
  CharactersLoaded(this.characters);
}