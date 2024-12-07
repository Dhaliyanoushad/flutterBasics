// import 'package:emulator_sample/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/screen_1.dart';

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
      // routes: {
      //   'screen_1': (ctx) {
      //     return ScreenOne();
      //   },
      //   'screen_2': (ctx) {
      //     return ScreenTwo();
      //   },
      // },
    );
  }
}
