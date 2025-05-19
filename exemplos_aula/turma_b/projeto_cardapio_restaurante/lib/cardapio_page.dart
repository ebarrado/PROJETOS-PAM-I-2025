// cardapio_page.dart

import 'package:flutter/material.dart';

class CardapioPage extends StatelessWidget {
  const CardapioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🍽️ Cardápio',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 233, 13, 13),
        actions: [Icon(Icons.search, color: Colors.white)],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.yellow,
        child: Column(
          children: [
            Container(
              color: const Color.fromRGBO(105, 240, 174, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    color: Colors.redAccent,
                    child: Column(
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI7EMwZjhpdzgZlu2xJ1oRoJAnzrzjC93KEA&s",
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Prato 1',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(Icons.star, color: Colors.yellow),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Descrição do prato 1',
                              style: TextStyle(fontSize: 16),
                            ),
                            const Icon(Icons.star, color: Colors.yellow),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'R\$ 29,90',
                              style: TextStyle(fontSize: 16),
                            ),
                            const Icon(Icons.star, color: Colors.yellow),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                // Adicionar ação para adicionar o prato ao carrinho
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Row(children: [Text('Prato 2')]),
            ),
          ],
        ),
      ),
    );
  }
}
