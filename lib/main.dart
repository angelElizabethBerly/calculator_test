import 'package:calculator_test/controller/home_screen_contoller.dart';
import 'package:calculator_test/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => HomeScreenController())
    ], child: MaterialApp(home: HomeScreen()));
  }
}
