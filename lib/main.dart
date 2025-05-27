import 'package:dicee/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dicee());
}

class Dicee extends StatelessWidget {
  const Dicee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
