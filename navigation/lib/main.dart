import 'package:navigation/screen_1.dart';
import 'package:navigation/screen_2.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const ScreenOne(),
      routes: {
        'screen_1': (ctx) {
          return const ScreenOne();
        },
        'screen_2': (ctx) {
          return const ScreenTwo();
        },
      },
    );
  }
}
