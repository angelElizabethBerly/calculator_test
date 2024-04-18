// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator_test/controller/home_screen_contoller.dart';
import 'package:calculator_test/view/home_screen/widget/calculator_key.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeProviderObj = context.watch<HomeScreenController>();
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 350,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    homeProviderObj.calValue,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    homeProviderObj.nextNum
                        ? homeProviderObj.num2.toString()
                        : homeProviderObj.num1.toString(),
                    style: TextStyle(fontSize: 35),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, crossAxisSpacing: 5, mainAxisSpacing: 5),
              children: [
                CalculatorKeyWidget(
                    keyText: "7",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("7")),
                CalculatorKeyWidget(
                    keyText: "8",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("8")),
                CalculatorKeyWidget(
                    keyText: "9",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("9")),
                CalculatorKeyWidget(
                    keyText: "/",
                    onTap: () =>
                        context.read<HomeScreenController>().divideNumbers()),
                CalculatorKeyWidget(
                    keyText: "4",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("4")),
                CalculatorKeyWidget(
                    keyText: "5",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("5")),
                CalculatorKeyWidget(
                    keyText: "6",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("6")),
                CalculatorKeyWidget(
                    keyText: "x",
                    onTap: () =>
                        context.read<HomeScreenController>().multiplyNumbers()),
                CalculatorKeyWidget(
                    keyText: "1",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("1")),
                CalculatorKeyWidget(
                    keyText: "2",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("2")),
                CalculatorKeyWidget(
                    keyText: "3",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("3")),
                CalculatorKeyWidget(
                  keyText: "-",
                  onTap: () =>
                      context.read<HomeScreenController>().subtractNumbers(),
                ),
                CalculatorKeyWidget(
                    keyText: "0",
                    onTap: () =>
                        context.read<HomeScreenController>().onTap("0")),
                CalculatorKeyWidget(
                    keyText: "AC",
                    onTap: () =>
                        context.read<HomeScreenController>().allClear()),
                CalculatorKeyWidget(
                  keyText: "=",
                  onTap: () =>
                      context.read<HomeScreenController>().onCalculate(),
                ),
                CalculatorKeyWidget(
                    keyText: "+",
                    onTap: () =>
                        context.read<HomeScreenController>().addNumbers()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
