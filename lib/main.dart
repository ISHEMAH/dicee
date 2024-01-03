import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: const Color.fromARGB(255, 31, 31, 31),
    appBar: AppBar(
      title: const Text("Dicee"),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    ),
    body: const DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              changeDice();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              changeDice();
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ))
        ],
      ),
    );
  }
}
