import 'package:flutter/material.dart';

class MusicInfo extends StatelessWidget {
  static String id = 'music_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music API"),
      ),
      body: Center(
        child: Text(
          "Music App Coming Soon",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}