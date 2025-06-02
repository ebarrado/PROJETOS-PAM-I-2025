// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomeApp());
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalhando com Listas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trabalhando com Listas'),
        actions: [],
        backgroundColor: Colors.amber,
      ),
      body: ListView(children: [Item(), Item(), Item()]),
    );
  }
}
class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(Icons.star, color: Colors.yellow[700]),
            Text('Item 1'),
          ],
        ),

        Column(
          children: [
            Icon(Icons.ad_units_rounded, color: Colors.yellow[700]),
            Text('Item 2'),
          ],
        ),
      ],
    );
  }
}
