// import 'package:emulator_sample/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:list_tile/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 208, 168),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('${index + 1} person'),
            subtitle: Text('Message ${index + 1}'),
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/images/marine.jpg'),
            ),
            trailing: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return ScreenTwo(name: '${index + 1} person says Heyy!');
                  },
                ),
              );
            },
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: 15,
      )),
    );
  }
}
