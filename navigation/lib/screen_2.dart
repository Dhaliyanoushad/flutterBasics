import 'package:flutter/material.dart';
import 'package:navigation/screen_3.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 158, 223, 85),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('SCREEN 2'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Go Back to Screen 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const ScreenThree();
                      },
                    ),
                  );
                },
                child: const Text('Go to Screen 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
