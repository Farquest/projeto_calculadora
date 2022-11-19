import 'package:calculadora/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calculadora/components/display.dart';
import 'package:calculadora/components/keyboard.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      home: Column(
        children: <Widget>[
          //Display(memory.firstValue + memory.operation + memory.secondValue),
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
