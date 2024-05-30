import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartWalkScreen extends StatelessWidget {
  const StartWalkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Області України'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blue,
              child: const Text(
                'Оберіть область для прогулянки',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildCustomButton('Ужгород', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Львів', onPressed: () {context.push("/lviv_walk");}),
            const SizedBox(height: 20),
            _buildCustomButton('Луцьк', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Рівне', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Тернопіль', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Івано-Франківськ', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Чернівці', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Вінниця', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Житомир', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Чернігів', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Київ', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Черкаси', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Кіровоград', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Миколаїв', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Одесса', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Херсон', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Дніпропетровськ', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Полтава', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Суми', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Харків', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Дніпропетровська', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Запоріжжя', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Луганськ', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('Донецьк', onPressed: () {}),
            const SizedBox(height: 20),
            _buildCustomButton('АР Крим', onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomButton(String text, {required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
