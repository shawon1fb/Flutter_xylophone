import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int sountNumber) {
    final Player = AudioCache();
    Player.play('note$sountNumber.wav');
  }

  Expanded BuiltKey(Color clr, int sountNumber) {
    return Expanded(
      child: FlatButton(
        color: clr,
        onPressed: () {
          PlaySound(sountNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuiltKey(Colors.red, 1),
              BuiltKey(Colors.orange, 2),
              BuiltKey(Colors.yellow, 3),
              BuiltKey(Colors.green, 4),
              BuiltKey(Colors.teal, 5),
              BuiltKey(Colors.blue, 6),
              BuiltKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
