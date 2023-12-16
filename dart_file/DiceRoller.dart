import 'package:flutter/material.dart';
import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';


class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

  var DiceImg='assets/images/img.png';

  final randomizer=Random();


  void roll(){
    AssetsAudioPlayer aud = AssetsAudioPlayer();
    aud.open(Audio('assets/sounds/Netflix-Intro-Sound-Effect.mp3'));
    int x=randomizer.nextInt(6)+1;
    setState(() {
      switch (x) {
        case 1:{
          DiceImg='assets/images/img.png';
        }
        case 2:
          {
            DiceImg = 'assets/images/img_1.png';
          }
        case 3:
          {
            DiceImg = 'assets/images/img_2.png';
          }
        case 4:
          {
            DiceImg = 'assets/images/img_3.png';
          }
        case 5:
          {
            DiceImg = 'assets/images/img_4.png';
          }
        case 6:
          {
            DiceImg = 'assets/images/img_5.png';
          }
      }
    });
  }
  @override
  Widget build(context){
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(DiceImg,width: 500),

        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: roll,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(
                top:50,
                bottom: 50,
                left: 50,
                right: 50
            ),
            foregroundColor: Colors.white,
            backgroundColor: Colors.brown,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll'),
        )
      ],
    );
  }
}