import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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

  void changeNumber(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
      print('Right button is pressed');
    });

  }
  int leftDiceNumber= 1;
  int rightDiceNumber= 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                //when button is pressed
                changeNumber();

              },
              child: Image.asset('images/dice$leftDiceNumber.png'
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeNumber();

              },
              child: Image.asset('images/dice$rightDiceNumber.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
}


