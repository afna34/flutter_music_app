
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final player = AudioPlayer();

  Home({super.key});

  void playSound(int soundNumber) {
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          musicButton(
              buttonAction: () {
                playSound(1);
              },
              buttonColor: Colors.red),
          musicButton(
              buttonAction: () {
                playSound(2);
              },
              buttonColor: Colors.orange),
          musicButton(
              buttonAction: () {
                playSound(3);
              },
              buttonColor: Colors.yellow),
          musicButton(
              buttonAction: () {
                playSound(4);
              },
              buttonColor: Colors.lightGreen),
          musicButton(
              buttonAction: () {
                playSound(5);
              },
              buttonColor: Colors.green),
          musicButton(
              buttonAction: () {
                playSound(6);
              },
              buttonColor: Colors.blue),
          musicButton(
              buttonAction: () {
                playSound(7);
              },
              buttonColor: Colors.purple),
        ],
      ),
    );
  }

  Widget musicButton(
      {required Color buttonColor, required void Function() buttonAction}) {
    return Expanded(
        child: ElevatedButton(
          onPressed: buttonAction,
          style: TextButton.styleFrom(
            enableFeedback: false,
            backgroundColor: buttonColor, // Text Color
          ),
          child: const Text(''),
        ));
  }
}
