import 'package:flutter/material.dart';
import 'package:task/data/model/characters.dart';

class CharactersItems extends StatelessWidget {
  final Character character;

  const CharactersItems({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius:BorderRadius.circular(8),
      ),
      child: GridTile(
     child: Container(
        color: Colors.grey,
        child: character.image.isNotEmpty?
        FadeInImage.assetNetwork(width: double.infinity, height: double.infinity,
            placeholder: 'assets/images/loading.gif', image: character.image , fit: BoxFit.cover,):
        Image.asset('assets/images/placeholder.png'),
      ),
      footer:Container(
        width:double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
        color: Colors.black54,
        alignment: Alignment.bottomCenter,
        child: Text(
          '${character.name}',
          style: TextStyle(height: 1.3,
          fontSize: 16 , color: Colors.white70,
          fontWeight: FontWeight.bold,),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      )
      ) );
  }
}
