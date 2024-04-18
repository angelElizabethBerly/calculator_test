// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CalculatorKeyWidget extends StatelessWidget {
  const CalculatorKeyWidget({super.key, required this.keyText, this.onTap});
  final String keyText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        height: 20,
        child: Center(
          child: Text(
            keyText,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
