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
      appBar: AppBar(title: const Text('Exemplo Column e Row')),
      body: Column(
        children: [
          Text(
            'Bolo de Chocolate',
            style: TextStyle(fontSize: 30, color: Colors.brown[900]),
          ),
          Text(
            "Delicioso bolo de chocolate feito com massa fofinha e cacau premium, coberto com uma generosa camada de ganache cremosa. Uma sobremesa perfeita para os amantes de chocolate!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.brown[900],
              fontFamily: 'Roboto',
              decorationStyle: TextDecorationStyle.wavy,
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
                    Row(children: [Icon(Icons.star, color: Colors.brown[900])]),
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
    );
  }
}
