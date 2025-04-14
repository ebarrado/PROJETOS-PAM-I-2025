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
          backgroundColor: Colors.black,

          title: Text(
            "Linhas para Imagens",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("4.jpg", height: 150, width: 150),
            Image.asset("5.jpg", height: 150, width: 150),
            Image.asset("6.jpg", height: 150, width: 150),
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
