import 'package:flutter/material.dart';
import 'package:rolling_dice/dart_file/DiceRoller.dart';

class Abc extends StatelessWidget{
  const Abc(this.x,this.y,{super.key});

  final Color x,y;

  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [x, y],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
