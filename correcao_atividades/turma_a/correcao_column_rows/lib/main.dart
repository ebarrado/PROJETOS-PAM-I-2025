// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const BoloApp());
}

class BoloApp extends StatelessWidget {
  const BoloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bolo App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BoloHomePage(),
    );
  }
}

class BoloHomePage extends StatelessWidget {
  const BoloHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bolo App')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //coluna principal
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromARGB(255, 199, 205, 209),
              width: double.infinity,
              child: Text(
                'Welcome to Bolo App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: const Color.fromARGB(255, 199, 205, 209),
              child: Text(
                'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum,',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              color: const Color.fromARGB(255, 199, 205, 209),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  Text('4.5'),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              color: const Color.fromARGB(255, 199, 205, 209),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.person),
                      Row(children: [Text('Prep')]),
                      Row(children: [Text('25m')]),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person),
                      Row(children: [Text('Prep')]),
                      Row(children: [Text('25m')]),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text('Prep')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text('25m')],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
