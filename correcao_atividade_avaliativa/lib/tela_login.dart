import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela de Login"),
        backgroundColor: const Color.fromARGB(255, 24, 79, 87),
      ),

      body: Column( 
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Nome",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: "Senha",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: const Text("Entrar")),
        ],
      ),
    );
  }
}
