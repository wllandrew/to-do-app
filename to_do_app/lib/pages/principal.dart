import 'package:flutter/material.dart';
import 'package:to_do_app/pages/lista.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  /// Variáveis da classe

  List<List> tarefas = [
    ["Exemplo", false]
  ];

  // Métodos

  void checkBoxMudar(bool? value, int i) {
    setState(() {
      tarefas[i][1] = !tarefas[i][1];
    });
  }

  /// Builder do widget TelaPrincipal
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // Cor de fundo do scaffold
      backgroundColor: const Color.fromARGB(255, 123, 212, 253),

      appBar: AppBar(
        // Título do appbar
        title: Text("Tarefas",
            style: TextStyle(color: Colors.white, fontSize: 30)),
        centerTitle: true,

        // Aparência
        backgroundColor: Colors.blue,
      ),

      // Corpo do Scaffold
      body: Padding(
        
        // Margem entre a página e os elementos
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: tarefas.length,
            itemBuilder: (context, i) {
              // Elemento Tile do listview.builder
              return PedacoLista(
                nome: tarefas[i][0],
                complecao: tarefas[i][1],
                onChanged: (value) {
                  checkBoxMudar(value, i);
                },
              );
            }),
      ), //Função listview.builder com tiles definidos no listapedacos.dart

      // Botão flutuante para adição de tarefas
      floatingActionButton: FloatingActionButton.extended(
        // Ação do botão
        onPressed: () {},

        // Icones e texto
        label: Text(
          "Adicionar",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        icon: Icon(Icons.add,

            // Aparência
            size: 25,
            color: Colors.white),

        backgroundColor: Colors.blue,
      ),
    );
  }
}
