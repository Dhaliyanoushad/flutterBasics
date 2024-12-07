import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;
  const ScreenTwo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 237, 228, 196),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Lets Go Backk!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
