import 'package:flutter/material.dart';

// The main funciton is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Image(
            image:
                AssetImage('img/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
