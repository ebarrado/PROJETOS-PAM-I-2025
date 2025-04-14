// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const ExemploRowImage());
}

class ExemploRowImage extends StatelessWidget {
  const ExemploRowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Linhas para Imagens",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Row(
          children: [
            Image.asset("1.jpg", height: 100, width: 100),
            Image.asset("2.png", height: 100, width: 100),
            Image.asset("3.jpg", height: 100, width: 100),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações",
            ),
          ],
        ),
      ),
    );
  }
}
