import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 208, 168),
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 10, 154, 221),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hey there!'),
              const Text('SCREEN 1'),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (ctx) {
                  //       return ScreenTwo();
                  //     },
                  //   ),
                  // );
                  Navigator.of(context).pushNamed('screen_2');
                },
                child: const Text('Go To Screen 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
