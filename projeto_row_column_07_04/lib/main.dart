// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tela de Login",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        body: Column(
          children: [
            Text(
              "Tela Login",
              style: TextStyle(
                fontSize: 24, 
                color: Colors.amber),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Usuário",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
