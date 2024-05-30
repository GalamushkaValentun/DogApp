import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Налаштування'),
      ),
      body: const Center(
        child: Text('Налаштування'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.chat),
              color: Colors.black,
              onPressed: () {
                context.push("/chat");
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              color: Colors.black,
              onPressed: () {
                context.push("/user_home_screen");
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              color: Colors.blue,
              onPressed: () {
              context.push("/settings");
                },
            ),
            IconButton(
              icon: const Icon(Icons.info_outline),
              color: Colors.black,
              onPressed: () {
                context.push("/info");
              },
            ),
          ],
        ),
      ),
    );
  }
}
