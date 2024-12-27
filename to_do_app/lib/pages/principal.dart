import 'package:flutter/material.dart';
import 'package:to_do_app/pages/lista.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Lista de Tarefas", style: TextStyle(
                fontSize: 25,
                color: Colors.white,
            )),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            toolbarHeight: 70,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ListView(
                children: [
                    Placeholder()
                ],
            ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {}, 
            icon: Icon(Icons.add, color: Colors.white, size: 40),
            label: Text("Adicionar", style: TextStyle(color: Colors.white, fontSize: 25)),
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
            ),
        )
    );
  }
}