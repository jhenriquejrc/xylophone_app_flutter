import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String note) {
    AudioCache().play('sounds/$note.wav');
  }

  Expanded soundKey(Color color, String soundNote) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNote);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundKey(Colors.purple, 'c'),
              soundKey(Colors.indigo, 'd1'),
              soundKey(Colors.blue, 'e1'),
              soundKey(Colors.green[900], 'f'),
              soundKey(Colors.green, 'g'),
              soundKey(Colors.yellow, 'a'),
              soundKey(Colors.orange, 'b'),
            ],
          ),
        ),
      ),
    );
  }
}
