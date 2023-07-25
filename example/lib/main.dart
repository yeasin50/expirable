import 'package:expirable/expirable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Expirable(
      skipAssert: false,
      expireDate: DateTime.now().add(const Duration(seconds: 5)), //! don't use DateTime.now() directly
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
