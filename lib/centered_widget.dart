import 'package:first_app/text_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CenteredWidget extends StatefulWidget {
  const CenteredWidget({super.key});

  @override
  State<CenteredWidget> createState() {
    return _CenteredWidgetState();
  }
}

class _CenteredWidgetState extends State<CenteredWidget> {
  var currentRoll = 1;

  void rollDice() {
    setState(() {
      currentRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextWidget("Roll the dice!"),
          Image.asset(
            'assets/images/dice-$currentRoll.png',
            width: 300,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: Text("Roll"),
          ),
        ],
      ),
    );
  }
}