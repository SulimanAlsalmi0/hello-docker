import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Docker',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Docker'),
        ),
        body: const Center(
          child: Text('Hello Docker Web!'),
        ),
      ),
    );
  }
}
