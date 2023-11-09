

import 'package:flutter/material.dart';
import 'package:taller1parcial2/screens/ListScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu correo Electronic BEBE',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ListScreen(),
    );
  }
}
