// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo Column e Row',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeBolos(),
    );
  }
}

class HomeBolos extends StatelessWidget {
  const HomeBolos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cardápio de Bolos',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Roboto',
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Ação do botão de voltar
          },
        ),
        backgroundColor: const Color.fromARGB(255, 16, 198, 204),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Ação do botão de pesquisa
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              // Ação do botão de favoritos
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Bolo de Chocolate',
                style: TextStyle(fontSize: 30, color: Colors.brown[900]),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.brown[100],
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Delicioso bolo de chocolate feito com massa fofinha e cacau premium, coberto com uma generosa camada de ganache cremosa. Uma sobremesa perfeita para os amantes de chocolate!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[900],
                    fontFamily: 'Roboto',
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              Image.network(
                'https://moinhoglobo.com.br/wp-content/uploads/2019/03/08-bolo-chocolate-1024x683.png',
                width: 400,
                height: 400,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star, color: Colors.yellow[700]),
                  Icon(Icons.star, color: Colors.yellow[700]),
                  Icon(Icons.star, color: Colors.yellow[700]),
                  Icon(Icons.star, color: Colors.yellow[700]),
                  Icon(Icons.star, color: Colors.yellow[700]),

                  Container(
                    padding: const EdgeInsets.all(8.0),
                    transformAlignment: Alignment.centerRight,
                    child: Text(
                      '4.5',
                      style: TextStyle(fontSize: 20, color: Colors.brown[900]),
                    ),
                  ),
                ],
              ),

              Container(
                color: Colors.brown[100],
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.access_time, color: Colors.brown[900]),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Tempo de Preparo',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown[900],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '30 min',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown[900],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.restaurant, color: Colors.brown[900]),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Rendimento',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown[900],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '8 porções',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown[900],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.brown[900]),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Avaliação',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown[900],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown[900],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 16, 198, 204),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Ação do botão Home
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                // Ação do botão Favoritos
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                // Ação do botão Configurações
              },
            ),
          ],
        ),
      ),
    );
  }
}
