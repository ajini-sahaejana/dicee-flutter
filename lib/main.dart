import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNo = Random().nextInt(6) + 1;
                  rightDiceNo = Random().nextInt(6) + 1;
                  print('Left Button Tapped');
                  print('LeftDiceNumber = $leftDiceNo');
                  print('RightDiceNumber = $rightDiceNo');
                });
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNo = Random().nextInt(6) + 1;
                  leftDiceNo = Random().nextInt(6) + 1;
                  print('Right Button Tapped');
                  print('LeftDiceNumber = $leftDiceNo');
                  print('RightDiceNumber = $rightDiceNo');
                });
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
