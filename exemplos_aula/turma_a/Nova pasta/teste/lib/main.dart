// main.dart
import 'package:flutter/material.dart';
import 'package:teste/pilha_componentes.dart';

void main() {
  runApp(const Pagina());
}

class Pagina extends StatelessWidget {
  const Pagina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exemplo Stack Pagina",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PilhaComponentes(),
    );
  }
}