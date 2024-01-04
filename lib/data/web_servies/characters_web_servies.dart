import 'dart:async';
import 'package:dio/dio.dart';
import 'package:task/constants/strings.dart';

class CharactersWebServies{
  late Dio dio;
  int myValue = 20;


  CharactersWebServies(){
    BaseOptions options =BaseOptions(
      baseUrl: BaseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout:  Duration(seconds: myValue),
      receiveTimeout: Duration(seconds: myValue),
    );
    dio = Dio(options);
  }
  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data;
    }
    catch(e) {
      print(e.toString());
      return [];
    }

  }
}