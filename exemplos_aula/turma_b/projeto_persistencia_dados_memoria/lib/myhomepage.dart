// myhomepage.dart
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  // final List<String, String> tarefas = [];
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Tarefas"), centerTitle: true),
      body: ListView(
        children: [
          Tarefas(), 
          Tarefas(), 
          Tarefas(), 
          Tarefas(), 
          Tarefas()],
      ),
    );
  }
}

class Tarefas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(color: Color.fromARGB(255, 115, 211, 214), height: 140),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Image.network("", fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    "Tarefa1",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    child: Icon(Icons.edit),
                    onPressed: () {
                      // Ação do botão de editar
                    },
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
