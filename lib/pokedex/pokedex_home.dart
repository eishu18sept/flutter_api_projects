import 'package:flutter/material.dart';
import 'package:flutter_api_projects/pokedex/pokemon_detail.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';
import 'package:flutter_api_projects/pokedex/pokemodel.dart';

class Pokedex extends StatefulWidget {
  static String id = 'pokedex';
  Pokedex({Key key}) : super(key: key);

  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {

  var url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  PokeModel pokeModel ;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async{
    var result = await http.get(url);
    var decodedResult = jsonDecode(result.body);
    pokeModel = PokeModel.fromJson(decodedResult);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PokeDex",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.cyan,
        child: Icon(
          Icons.search,
        ),
      ),
      // using conditional operators to check body is not null
      body: pokeModel == null ? 
      Center(child: CircularProgressIndicator()) : 
      GridView.count(
        crossAxisCount: 2,
        children:  pokeModel.pokemon.map((poke) => Padding(
          padding: const EdgeInsets.all(3.0),
          child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PokeDetail( pokemon: poke ),
                  ),
                );
              },
              child: Hero(
                tag: poke.img,
                child: Card(
                elevation: 5.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(poke.img),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text(
                        poke.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
            ),
              ),
          ),
        )).toList(),
      ),
    );
  }
}