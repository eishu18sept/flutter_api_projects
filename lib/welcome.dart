import 'package:flutter/material.dart';
import 'package:flutter_api_projects/pokedex/pokedex_home.dart';
import 'package:flutter_api_projects/marvel/marvel_home.dart';
import 'package:flutter_api_projects/music/music_home.dart';
import 'package:flutter_api_projects/movies/movies_home.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Flutter APIs",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GestureDetector(
                onTap: () {Navigator.pushNamed(context, Pokedex.id);},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150.0,
                    height: 220.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/pokemon_bg.jpg')
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {Navigator.pushNamed(context, MoviesInfo.id);},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150.0,
                    height: 220.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/movie_bg.jpg')
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ),
              ),          
              GestureDetector(
                onTap: () {Navigator.pushNamed(context, Marvel.id);},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150.0,
                    height: 220.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/marvel_bg.jpg')
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ),
              ),      
              GestureDetector(
                onTap: () {Navigator.pushNamed(context, MusicInfo.id);},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150.0,
                    height: 220.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/music_bg.jpg')
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ),
              ),      
            ],
          ),
          ],
        ),
      ),
    );
  }
}
