import 'package:flutter/material.dart';
import 'package:to_do_app/pages/principal.dart';

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

