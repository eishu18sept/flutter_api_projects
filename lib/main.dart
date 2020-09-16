import 'package:flutter/material.dart';
import 'package:flutter_api_projects/welcome.dart';
import 'package:flutter_api_projects/pokedex/pokedex_home.dart';
import 'package:flutter_api_projects/marvel/marvel_home.dart';
import 'package:flutter_api_projects/music/music_home.dart';
import 'package:flutter_api_projects/movies/movies_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter APIs',
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        Pokedex.id : (context) => Pokedex(),
        Marvel.id : (context) => Marvel(),
        MusicInfo.id : (context) => MusicInfo(),
        MoviesInfo.id : (context) => MoviesInfo(),
      },
    );
  }
}