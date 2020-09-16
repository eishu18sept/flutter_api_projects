import 'package:flutter/material.dart';
import 'package:flutter_api_projects/pokedex/pokemodel.dart';

class PokeDetail extends StatelessWidget {

  final Pokemon pokemon ;
  PokeDetail({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(pokemon.name)
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2 ,
                  ),
                  Text(
                    pokemon.name,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Height : ${pokemon.height}",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Weight : ${pokemon.weight}",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Types",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 25.0
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.type.map((t) => FilterChip(
                      backgroundColor: Colors.amber,
                      label: Text(
                        t,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                        ),
                      ),
                      onSelected: (b) {})
                    ).toList(),
                  ),
                  Text(
                    "Weakness",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 25.0
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.weaknesses.map((t) => FilterChip(
                      backgroundColor: Colors.red,
                      label: Text(
                        t,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                        ),
                      ),
                      onSelected: (b) {})
                    ).toList(),
                  ),
                  Text(
                    "Next Evolution",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 25.0
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.nextEvolution == null
                        ? <Widget>[Text("This is the final form")]
                        : pokemon.nextEvolution.map((n) => FilterChip(
                          backgroundColor: Colors.green,
                          label: Text(
                            n.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0
                            ),
                          ),
                          onSelected: (b) {})
                        ).toList(),
                  )
                ]
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: pokemon.img, 
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(pokemon.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}