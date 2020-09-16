import 'package:flutter/material.dart';

class Marvel extends StatelessWidget {
  static String id = 'marvel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Marvel Universe",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Marvel App Coming Soon",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}