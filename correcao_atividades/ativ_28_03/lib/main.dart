// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        title: Text(
          'Desenvolvimento de Sistemas',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("DS - 2025", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Image.network(
            'https://i.ytimg.com/vi/FapEtCJXVlU/maxresdefault.jpg',
          ), // Imagem de exemplo
          SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Text('ENTRAR', style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Uma turminha do barulho, cheia de aventuras e amizade! ",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
              color: Colors.white,
            ),
            //  SizedBox(width: 40), // Espaço para o botão flutuante
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),

        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
