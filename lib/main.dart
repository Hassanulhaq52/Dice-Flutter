import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
              child: Text(
                  'Dicee'
              ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 5;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                  print('leftDiceNumber = $leftDiceNumber');
                });

              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rightDiceNumber = Random().nextInt(6)+1;
                print('RightDiceNumber = $rightDiceNumber');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                    'images/dice$rightDiceNumber.png'
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  }

