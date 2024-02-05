import 'package:flutter/material.dart';
import 'package:test/screens/counter/counter_functions_screen.dart';
// import 'screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: const CounterFunctionsScreen(),
    );
  }
}
