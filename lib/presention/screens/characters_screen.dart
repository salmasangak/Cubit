
import 'package:flutter/material.dart';
import '../../bussiens_logic/cubit_cubit.dart' hide State;
import '../../data/model/characters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {

  late List<Character> allCharacters;


  @override
  void initState()
  {
    super.initState();
    allCharacters = BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.cyanAccent;
       title: Text('saaaaaaalma'),
     ),
    );
  }
}
