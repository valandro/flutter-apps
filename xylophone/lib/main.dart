import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNote) {
    final player = AudioCache();
    player.play('note$soundNote.wav');
  }

  Widget buildKey(int soundNote, Color color) {
    return Expanded(
      child: FlatButton(onPressed: () {
        playSound(soundNote);
      }, color: color,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(2, Colors.purple),
          ],)),
        ),
    );
  }
}
