import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Інформація про собак'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Собаки - це соціальні тварини, які потребують багато уваги, любові та стимулюючого середовища.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Важливо пам\'ятати про правильне харчування собак, регулярні візити до ветеринара і дотримання вакцинаційного графіка.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Соціалізація є важливою для всіх порід собак і допомагає їм розвивати позитивні взаємовідносини з іншими тваринами та людьми.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Породи собак',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.push("/labrador_retriever");
                },
                child: const Text('Лабрадор ретривер'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/german_shepherd");
                },
                child: const Text('Німецький вівчарка'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/french_bulldog");
                },
                child: const Text('Французький бульдог'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/siberian_husky");
                },
                child: const Text('Сибірський хаскі'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/golden_retriever");
                },
                child: const Text('Золотистий ретривер'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/beagle");
                },
                child: const Text('Бігль'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/poodle");
                },
                child: const Text('Пудель'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/jack_russell_terrier");
                },
                child: const Text('Джек-рассел тер\'єр'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Бажаєте прогулятись із собакою, але не знаєте куди піти?:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      context.push("/start_walk");
                    },
                    child: const Text('Прогулянка'),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
