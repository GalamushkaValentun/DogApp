import 'package:flutter/material.dart';

class LvivWalkScreen extends StatelessWidget {
  const LvivWalkScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Місця для прогулянок у Львові'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWalkCard(
                title: 'Сколівські Бескиди',
                subTitle:
                'Це гірський район з багатьма мальовничими місцями для прогулянок. Ви можете обрати одноденні маршрути або навіть здійснити декількоденні походи разом з собакою.',
              ),
              const SizedBox(height: 20),
              _buildWalkCard(
                title: 'Парк "Знесіння" (Парк Сахнівщина)',
                subTitle:
                'Розташований поблизу міста Львова, цей парк пропонує велику територію для прогулянок зі свіжим повітрям та великою кількістю дерев та зелених насаджень.',
              ),
              const SizedBox(height: 20),
              _buildWalkCard(
                title:
                'Львівський парк культури та відпочинку ім. Б. Хмельницького (Погулянка)',
                subTitle:
                'Це одне з найпопулярніших місць для прогулянок у Львові. Великі зелені території, але тримайте увагу на правила щодо вигулу собак.',
              ),
              const SizedBox(height: 20),
              _buildWalkCard(
                title: 'Парк "Софіївка"',
                subTitle:
                'Знаходиться в місті Стрий, цей парк відомий своєю красою та спокоєм. Великий вибір стежок для прогулянок.',
              ),
              const SizedBox(height: 20),
              _buildWalkCard(
                title: 'Річка Стрий',
                subTitle:
                'Якщо ваша собака любить воду, річка Стрий може бути чудовим місцем для прогулянок біля води.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWalkCard({required String title, required String subTitle}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'Прогулянка по Львову',
    home: LvivWalkScreen(),
  ));
}
