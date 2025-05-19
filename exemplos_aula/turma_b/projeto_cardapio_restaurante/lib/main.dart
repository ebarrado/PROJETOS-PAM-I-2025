// main.dart
import 'package:flutter/material.dart';
import 'package:projeto_cardapio_restaurante/cardapio_page.dart';

void main() {
  runApp(const CardapioApp());
}

class CardapioApp extends StatelessWidget {
  const CardapioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CardapioPage(),
    );
  }
}
