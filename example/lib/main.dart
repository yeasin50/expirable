import 'package:expirable_widget/expirable_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    ExpirableWidget(
      skipAssert: true,
      expireDate: DateTime.now().subtract(const Duration(seconds: 5)), //! don't use DateTime.now() directly
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
