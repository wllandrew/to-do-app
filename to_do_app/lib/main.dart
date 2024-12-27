import 'package:flutter/material.dart';

// Configuração inicial e rotas -----------------------------

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => const TelaInicial(),
        }
    );
  }
}

// WIdget da tela Inicial -----------------------------------

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Lista de tarefas", style: TextStyle(
                fontSize: 25,
                color: Colors.white
            )),
            backgroundColor: Colors.blueAccent,
        ),
        body: Placeholder(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.add, color: Colors.white) 
        ),
    );
  }
}
