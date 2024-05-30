import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key});

  @override
  _AuthorizationScreenState createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = email.isNotEmpty && password.isNotEmpty && email.endsWith('@gmail.com');

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.pets),
            SizedBox(width: 8),
            Text('Авторизація'),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Електронна пошта',
                      prefixIcon: Icon(Icons.email),
                    ),
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Пароль',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: isButtonEnabled
                      ? () {
                    context.push("/user_home_screen");
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isButtonEnabled ? Colors.blueAccent : Colors.grey,
                  ),
                  child: const Text('Підтвердити'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    context.go('/');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  child: const Text('Назад'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
