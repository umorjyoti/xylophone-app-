import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(var sound) {
    final player = AudioCache();
    player.play(sound);
  }

  Expanded buildKey({Color color, var sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
      ),
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
            children: [
              buildKey(color: Colors.red, sound: 'note1.wav'),
              buildKey(color: Colors.yellow, sound: 'note2.wav'),
              buildKey(color: Colors.blue, sound: 'note3.wav'),
              buildKey(color: Colors.greenAccent, sound: 'note4.wav'),
              buildKey(color: Colors.pink, sound: 'note5.wav'),
              buildKey(color: Colors.purpleAccent, sound: 'note6.wav'),
              buildKey(color: Colors.orangeAccent, sound: 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
