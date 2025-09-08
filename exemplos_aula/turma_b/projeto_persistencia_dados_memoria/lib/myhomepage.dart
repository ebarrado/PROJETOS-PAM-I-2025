// myhomepage.dart
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  // final List<String, String> tarefas = [];
}

class _MyHomePageState extends State<MyHomePage> {
  //Método para iniciar a tela em branco

  //variavel de lista para a tarefa
  //lista vazia
  final List<Map<String, String>> _tarefas = [];

  //método para adicionar tarefa na lista
  void _adicionarTarefas(String url, String descricao) {
    //setState
    //Orientação a Obetos metodos GET e SET
    //setState ele avisa algo mudou no estado da tela
    setState(() {
      _tarefas.add({'url': url, 'descricao': descricao});
    });
  }

  //Metodo para editar Tarefas
  void _editarTarefas(int index, String url, String descricao) {
    //metodo set
    setState(() {
      _tarefas[index] = {'url': url, 'descricao': descricao};
    });
  }

  //Metodo Excluir
  void _deletarTarefas(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirmar Exlusão"),
          content: Text("Certeza que deseja exluir essa atividade?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _tarefas.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: Text("Exluir"),
            ),
          ],
        );
      },
    );
  }

  //método para abrir o modal - popup
  void _showFormTarefas(BuildContext context) {
    //criando as variaveis do tipo TextEditingController
    final TextEditingController descricaoController = TextEditingController();
    final TextEditingController urlController = TextEditingController();
    //Criando Variavel para erro
    String? messagemErro;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cadastrar Tarefas",
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: descricaoController,
                        decoration: InputDecoration(
                          labelText: "Descrição da Tarefa",
                        ),
                      ),

                      SizedBox(height: 8),
                      TextField(
                        controller: urlController,
                        decoration: InputDecoration(labelText: 'URL da imagem'),
                      ),
                      SizedBox(height: 20),
                      if (messagemErro != null)
                        Text(
                          messagemErro!,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              //ação botão
                              if (descricaoController.text.trim().isEmpty ||
                                  urlController.text.trim().isEmpty) {
                                setState(() {
                                  messagemErro = "Preencha o Campo Obrigatório";
                                });
                              } else {
                                _adicionarTarefas(
                                  urlController.text,
                                  descricaoController.text,
                                );
                                Navigator.of(context).pop();
                              }
                            },
                            child: Text('Cadastrar'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //ação do botão
                            },
                            child: Text('Cancelar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //MODAL PARA EDITAR TAREFAS
  //método para editar o modal - popup
  void _showEditTarefas(BuildContext context, int index) {
    final TextEditingController urlController = TextEditingController(
      text: _tarefas[index]['url'],
    );
    //criando as variaveis do tipo TextEditingController
    final TextEditingController descricaoController = TextEditingController(
      text: _tarefas[index]['descricao'],
    );

    //Criando Variavel para erro
    String? messagemErro;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cadastrar Tarefas",
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: descricaoController,
                        decoration: InputDecoration(
                          labelText: "Descrição da Tarefa",
                        ),
                      ),

                      SizedBox(height: 8),
                      TextField(
                        controller: urlController,
                        decoration: InputDecoration(labelText: 'URL da imagem'),
                      ),
                      SizedBox(height: 20),
                      if (messagemErro != null)
                        Text(
                          messagemErro!,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              //ação botão
                              if (descricaoController.text.trim().isEmpty ||
                                  urlController.text.trim().isEmpty) {
                                setState(() {
                                  messagemErro = "Preencha o Campo Obrigatório";
                                });
                              } else {
                                _editarTarefas(
                                  index,
                                  urlController.text,
                                  descricaoController.text,
                                );
                                Navigator.of(context).pop();
                              }
                            },
                            child: Text('Cadastrar'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //ação do botão
                            },
                            child: Text('Cancelar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //FIM DO MODAL DE EDITAR

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Tarefas"), centerTitle: true),
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (context, index) {
          return Tarefas(
            _tarefas[index]['url']!,
            _tarefas[index]['descricao']!,
            () => _showEditTarefas(context, index),
            () => _deletarTarefas(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //aqui vai a ação do botão
          _showFormTarefas(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Tarefas extends StatelessWidget {
  //inserir as variaveis aqui
  final String imagem_url;
  final String descricao_tarefa;
  final VoidCallback onEdit;
  final VoidCallback onDeletar;

  const Tarefas(
    this.imagem_url,
    this.descricao_tarefa,
    this.onEdit,
    this.onDeletar, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(color: Color.fromARGB(255, 115, 211, 214), height: 140),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Image.network(imagem_url, fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    descricao_tarefa,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: onEdit,
                        child: Icon(Icons.edit),
                      ),
                      ElevatedButton(
                        onPressed: onDeletar,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
