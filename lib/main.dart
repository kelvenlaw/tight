import 'package:flutter/material.dart';
import 'package:tight_app/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: const Color.fromARGB(255, 221, 202, 224),
            fontSize: 70),
          bodyLarge: TextStyle(
            color: Colors.green,
            fontSize: 80,
          )
        )
      ),
      home: Scaffold(
        body: Center(
          child: HomePage(),
        )
      ),
    );
  }
}
