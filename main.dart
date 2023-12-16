import 'package:flutter/material.dart';
import 'package:rolling_dice/dart_file/Abc.dart';

void main()
{
  runApp(
    const MaterialApp(
      home:Scaffold(
        body: Center(
            child:Abc(Colors.blue,Colors.green)
      ),
    ),
  ),
  );
}