// pilha_componentes.dart
import 'package:flutter/material.dart';

//stl - Selecionar StatelesWidget
class PilhaComponentes extends StatelessWidget {
  const PilhaComponentes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Componentes usando Pilha",
            style: TextStyle(color: const Color.fromARGB(255, 248, 248, 248)),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ), // Ícone de configurações
            onPressed: () {
              // Ação ao pressionar o ícone
              print("Botão Pressionado");
            },
          ),
        ],
      ),
      body: criarPilhaComponente(),
    );
  }
}

Stack criarPilhaComponente() {
  return Stack(
    children: <Widget>[
      Image.network(
        "https://marketplace.canva.com/EAFhiTDWcOg/1/0/900w/canva-imagem-de-fundo-de-tela-para-celular-borboleta-degrad%C3%AA-azul-e-verde-_37ytwE_kmo.jpg",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Positioned(
        bottom: 50,
        left: 100,
        child: Text(
          "DESENVOLVIMENTO SISTEMAS - TURMA A",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "Arial",
          ),
        ),
      ),
    ],
  );
}