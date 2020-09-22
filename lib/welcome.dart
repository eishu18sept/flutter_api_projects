import 'package:flutter/material.dart';
import 'package:flutter_api_projects/pokedex/pokedex_home.dart';
import 'package:flutter_api_projects/marvel/marvel_home.dart';
import 'package:flutter_api_projects/music/music_home.dart';
import 'package:flutter_api_projects/movies/movies_home.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';
  final ScrollController _scrollController = ScrollController(initialScrollOffset: 50.0);

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
        child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {Navigator.pushNamed(context, Pokedex.id);},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "PokeDex",
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Container(
                              width: 350.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/pokemon_bg.jpg')
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.pushNamed(context, MoviesInfo.id);},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "MovieInfo",
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Container(
                              width: 350.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/movie_bg.jpg')
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.pushNamed(context, Marvel.id);},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Marvel Comics",
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Container(
                              width: 350.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/marvel_bg.jpg')
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.pushNamed(context, MusicInfo.id);},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Music ",
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            Container(
                              width: 350.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/music_bg.jpg')
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
