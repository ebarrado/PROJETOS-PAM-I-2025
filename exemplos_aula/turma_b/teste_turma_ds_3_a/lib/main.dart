// main.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoListScreen(),
      //home: TodoListScreen(): Define a tela inicial como a tela da lista de tarefas.
    );
  }
}

class TodoListScreen extends StatefulWidget {
  //Um StatefulWidget porque a lista de tarefas pode mudar com ações do usuário.
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<String> _tarefas = [];
  //_tarefas: Armazena a lista de tarefas em memória.
  TextEditingController _controller = TextEditingController();
  //_controller: Controla o campo de texto onde o usuário digita a tarefa
  @override
  void initState() {
    //initState: Executa assim que a tela é aberta.
    super.initState();
    _carregarTarefas();
  } //Chama _carregarTarefas para recuperar os dados salvos.

  void _carregarTarefas() async {
    //Obtém a instância do SharedPreferences.
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //Recupera a lista salva com a chave 'tarefas'.
    List<String>? tarefasSalvas = prefs.getStringList('tarefas');
    if (tarefasSalvas != null) {
      setState(() {
        _tarefas = tarefasSalvas;
        //Se existir, atualiza a lista _tarefas.
      });
    }
  }

  void _salvarTarefas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('tarefas', _tarefas);
    //Salva a lista atual no dispositivo com a chave 'tarefas'.
  }

  void _adicionarTarefa() {
    //Pega o texto digitado.
    String texto = _controller.text.trim();
    if (texto.isNotEmpty) {
      //Verifica se não está vazio.
      setState(() {
        _tarefas.add(texto);
        _controller.clear();
      });
      //Adiciona à lista, limpa o campo, e salva.
      _salvarTarefas();
    }
  }

  void _removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
    _salvarTarefas();
  }
  //Remove o item pelo índice e salva a nova lista.

  //Construindo a Interface (build)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      TextField: Campo para digitar nova tarefa.

IconButton (no campo): Botão de adicionar.

ListView.builder: Lista que mostra todas as tarefas.

ListTile com IconButton: Cada tarefa com botão de remover.

      */
      appBar: AppBar(title: Text('Minhas Tarefas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Digite uma nova tarefa',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _adicionarTarefa,
                ),
              ),
              onSubmitted: (_) => _adicionarTarefa(),
            ),
            SizedBox(height: 20),
            Expanded(
              child:
                  _tarefas.isEmpty
                      ? Center(child: Text('Nenhuma tarefa adicionada.'))
                      : ListView.builder(
                        itemCount: _tarefas.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_tarefas[index]),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => _removerTarefa(index),
                            ),
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
