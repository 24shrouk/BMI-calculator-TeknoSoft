import 'package:flutter/material.dart';
import 'package:ibm_tech/screens/home_screen.dart';

void main() {
  runApp(const IBMCalculator());
}

class IBMCalculator extends StatefulWidget {
  const IBMCalculator({super.key});

  @override
  State<IBMCalculator> createState() => _IBMCalculatorState();
}

class _IBMCalculatorState extends State<IBMCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
