import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playSound(int num) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/$num.mp3"),
    );
  }

  Expanded buildKey(int num, Color clr) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: clr),
        onPressed: () {
          playSound(num);
        },
        child: null,
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.blue),
                buildKey(6, Colors.indigo),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
