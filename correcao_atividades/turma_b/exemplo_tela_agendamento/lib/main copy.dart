// main copy.dart
import 'package:flutter/material.dart';

void main() => runApp(AgendeiApp());

class AgendeiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendei', style: TextStyle(color: Colors.teal)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.teal),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Agende os seus serviços", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Qual cidade você está?",
                prefixIcon: Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),

            // Linha 1
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        //radius: 30,
                        // backgroundColor: Colors.teal[50],
                        child: Icon(
                          Icons.local_hospital,
                          size: 30,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Médico", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        child: Icon(
                          Icons.medical_services,
                          size: 30,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Dentista", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        child: Icon(Icons.cut, size: 30, color: Colors.teal),
                      ),
                      SizedBox(height: 8),
                      Text("Cabeleireiro", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Linha 2
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        child: Icon(
                          Icons.fitness_center,
                          size: 30,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Personal", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        child: Icon(Icons.pets, size: 30, color: Colors.teal),
                      ),
                      SizedBox(height: 8),
                      Text("Petshop", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        child: Icon(
                          Icons.self_improvement,
                          size: 30,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Pilates", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Linha 3
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        child: Icon(Icons.brush, size: 30, color: Colors.teal),
                      ),
                      SizedBox(height: 8),
                      Text("Manicure", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.teal[50],
                        child: Icon(Icons.apple, size: 30, color: Colors.teal),
                      ),
                      SizedBox(height: 8),
                      Text("Nutricionista", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.teal[50],
                        ),
                        child: Icon(
                          Icons.local_car_wash,
                          size: 30,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Lava Car", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Pesquisar'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
