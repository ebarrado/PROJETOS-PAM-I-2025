// main.dart
import 'package:flutter/material.dart';

// main.dart
void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo com Row e Imagem',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Layout com Row',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 108, 206, 196),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagem à esquerda
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCMXUeXFBXvBl7ZnBuCj_dK_Kjr3XOgmV6sg&s',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(width: 20),
                // Coluna com textos e botão
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bem-vindo!',
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 17, 17),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('Este é um exemplo usando Row.'),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        print('Botão pressionado');
                      },
                      child: const Text('Clique Aqui'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
