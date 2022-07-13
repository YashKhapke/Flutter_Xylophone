import "package:flutter/material.dart";
import "package:assets_audio_player/assets_audio_player.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void sound(int x) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/note$x.wav"),
    );
  }

  Expanded button({required Color color, required int no}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          sound(no);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(color: Colors.red, no: 1),
              button(color: Colors.orange, no: 2),
              button(color: Colors.blue, no: 3),
              button(color: Colors.green, no: 4),
              button(color: Colors.grey, no: 5),
              button(color: Colors.brown, no: 6),
              button(color: Colors.teal, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
