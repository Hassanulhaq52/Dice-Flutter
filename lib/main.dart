import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = 5;
                  print('DiceNumber = $leftDiceNumber');
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
                print('Right Button is pressed.');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                    'images/dice1.png'
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  }

