// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(255, 0, 0, 0);
  static const DEFAULT = Color.fromARGB(255, 13, 250, 116);
  static const OPERATION = Color.fromARGB(255, 13, 250, 116);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    super.key,
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.cb,
  });

  const Button.big({
    super.key,
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.cb,
  });

  const Button.operation({
    super.key,
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
