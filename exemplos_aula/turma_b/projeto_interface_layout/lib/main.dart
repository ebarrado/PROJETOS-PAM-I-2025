// main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MinhaPrimeiraPagina());
}

class MinhaPrimeiraPagina extends StatelessWidget {
  const MinhaPrimeiraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Minha Primeira Página",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Page title'),
          backgroundColor: const Color.fromARGB(255, 101, 202, 233),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          actions: [
            IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            PopupMenuButton(
              itemBuilder:
                  (context) => [
                    const PopupMenuItem(child: Text('Option 1')),
                    const PopupMenuItem(child: Text('Option 2')),
                  ],
            ),
          ],

          /*
          
          title: Center(
            child: Text(
              "Aplicativo Exemplo - DS 2025",
              style: TextStyle(color: Colors.white),
            ),
          ),

          actions: [
            IconButton(
              onPressed: () {
                print("Botão selecionado");
                //LOGICA DE PROGRAMAÇÃO DO BOTÃO
              },
              icon: Icon(Icons.camera),
            ),
            IconButton(
              onPressed: () {
                print("Botão selecionado");
                //LOGICA DE PROGRAMAÇÃO DO BOTÃO
              },
              icon: Icon(Icons.handshake_outlined),
            ),
          ],
          backgroundColor: Colors.red,
          */
        ),
        body: Center(
          child: Container(
            child: Center(child: Text("Exemplo")),
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 101, 202, 233),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shape_line_rounded,
                color: Color.fromARGB(115, 252, 252, 252),
              ),
              label: "Pesquisar",
            ),
          ],
        ),
      ),
    );
  }
}
