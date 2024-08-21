import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> { // Underscore mengartikan bahwasanya class tersebut private
  // var activeDiceImage = 'Assets/dice-2.png';
  var currentDiceRoll = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    final randomizer = Random();
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // currentDiceRoll = diceRoll;
      // activeDiceImage = 'Assets/dice-$diceRoll.png';
    });
  }
  
  @override
  Widget build(context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            // child: StyledText("Hello")
              
            children: [
              Image.asset(
                'Assets/dice-$currentDiceRoll.png',
                width: 200,
              ),
              
              const SizedBox(
                height: 20.0,
              ),
              
              
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  
                  // padding: const EdgeInsets.only(
                  //   top: 20
                  // ),
                  
                  foregroundColor: Colors.white,
                  
                  textStyle: const TextStyle(
                    fontSize: 28
                    ),
                ),
                child: const Text('Roll Dice'),
              )
          ],
        );
  }
} 
