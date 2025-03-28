// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(PrimeiraTela());
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Primeira Página",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
          title: Text("WhatsApp", style: TextStyle(color: Colors.white)),

          actions: [
            IconButton(
              onPressed: () {
                print("Botão Presionado");
              },
              icon: Icon(Icons.saved_search, color: Colors.white),
            ),
          ],
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Exemplo Aula DS 2025",
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                    ),
                  ),
                  height: 200,
                  width: 300,
                  color: Colors.pink,
                ),
                SizedBox(height: 16),
                Container(height: 200, color: Colors.pink),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 138, 14, 14),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
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
