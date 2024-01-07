
import 'package:flutter/material.dart';
import 'package:task/presention/widgets/Characters_item.dart';
import '../../bussiens_logic/cubit_cubit.dart' ;
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
  Widget buildBlocWidget(){
    return BlocBuilder <CharactersCubit,CharactersState>
      (builder: (context,state){
          if(state is CharactersLoaded){
             allCharacters=(state).characters;
             return buildLoadedListWidgets();
          }
          else{
            return showLoadingIndictor();
          }
    });
  }

  Widget showLoadingIndictor(){
    return Center(child: CircularProgressIndicator(
      color: Colors.yellow    ),
    );
  }

  Widget buildLoadedListWidgets(){
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            BuildChatactersList()
          ],
        ),
      ),
   );
  }

Widget BuildChatactersList(){
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 2/3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: allCharacters.length,
      itemBuilder: (ctx,index){
     return CharactersItems(character:allCharacters[index],);
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.yellow,
       title: Text('Characters',style: TextStyle(color: Colors.grey), ),
     ),
      body:buildBlocWidget() ,
    );
  }
}
