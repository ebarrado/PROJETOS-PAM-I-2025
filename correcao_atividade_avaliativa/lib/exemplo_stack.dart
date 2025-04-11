// exemplo_stack.dart
import 'package:flutter/material.dart';
import 'tela_login.dart';

class ExemploStack extends StatelessWidget {
  const ExemploStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Layout
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tubarões e baleias',
            style: TextStyle(color: const Color.fromARGB(255, 96, 74, 202)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 7, 33),
      ),
      body: criarStack(context),
      backgroundColor: Colors.grey,
    );
  }
}

Stack criarStack(BuildContext context) {
  return Stack(
    children: <Widget>[
      Image.network(
        'https://marketplace.canva.com/EAFfbzRyhmQ/2/0/900w/canva-fundo-de-tela-para-celular-aquarela-m%C3%A1rmore-minimalista-aesthetic-rosa-e-branco-jXm_DWP3Iu4.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Positioned(bottom: 100, left: 200, child: Text('')),
      Positioned(
        bottom: 50,
        left: 600,
        child: ElevatedButton(
          onPressed: () {
            ///Quando o botão for apertado
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TelaLogin()),

              ///Código pra o botão levar pra outra tela
            );
          },
          child: Text("Login"), //O que tá escrito no botão
        ),
      ),
    ],
  );
}
