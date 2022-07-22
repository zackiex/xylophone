import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Sound(int Nbrsound) {
    final player = AudioCache();
    player.play('note$Nbrsound.wav');
  }

  Expanded keymusik({int SongNbr, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          Sound(SongNbr);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                keymusik(SongNbr: 1, color: Colors.red),
                keymusik(SongNbr: 2, color: Colors.indigo),
                keymusik(SongNbr: 3, color: Colors.brown),
                keymusik(SongNbr: 4, color: Colors.amber),
                keymusik(SongNbr: 5, color: Colors.black26),
                keymusik(SongNbr: 6, color: Colors.teal),
                keymusik(SongNbr: 7, color: Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
