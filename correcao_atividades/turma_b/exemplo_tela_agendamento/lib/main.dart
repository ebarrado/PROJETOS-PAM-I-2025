// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AgendeiApp());
}

class AgendeiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  Widget buildService(String label, IconData icon) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.teal[50],
            child: Icon(icon, size: 30, color: Colors.teal),
          ),
          SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }

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
            SizedBox(height: 20),

            // Primeira linha
            Row(
              children: [
                buildService("Médico", Icons.local_hospital),
                buildService("Dentista", Icons.medical_services),
                buildService("Cabeleireiro", Icons.cut),
              ],
            ),
            SizedBox(height: 16),

            // Segunda linha
            Row(
              children: [
                buildService("Personal", Icons.fitness_center),
                buildService("Petshop", Icons.pets),
                buildService("Pilates", Icons.self_improvement),
              ],
            ),
            SizedBox(height: 16),

            // Terceira linha
            Row(
              children: [
                buildService("Manicure", Icons.brush),
                buildService("Nutricionista", Icons.apple),
                buildService("Lava Car", Icons.local_car_wash),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
