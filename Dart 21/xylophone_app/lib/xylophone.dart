import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_app/widgets/piano_key.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  AudioPlayer audio = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: AppBar(
        backgroundColor: const Color(0xff363636),
        title: const Text(
          'Flutter Xylophone',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          PianoKey(
            colors: const Color(0xffEF443A),
            onTap: () {
              audio.play(AssetSource('mp3/do.wav'));
            },
          ),
          PianoKey(
            colors: const Color(0xffF99700),
            onTap: () {
              audio.play(AssetSource('mp3/re.wav'));
            },
          ),
          PianoKey(
            colors: const Color(0xffFFE93B),
            onTap: () {
              audio.play(AssetSource('mp3/mi.wav'));
            },
          ),
          PianoKey(
            colors: const Color(0xff4CB050),
            onTap: () {},
          ),
          PianoKey(
            colors: const Color(0xff2E968C),
            onTap: () {},
          ),
          PianoKey(
            colors: const Color(0xff2996F5),
            onTap: () {},
          ),
          PianoKey(
            colors: const Color(0xff9B28B1),
            onTap: () {},
          ),
          PianoKey(
            colors: const Color(0xff363636),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
