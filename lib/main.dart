import 'package:flutter/material.dart';
import 'package:to_do_app/pages/pagina_principal.dart';

// Configuração inicial e rotas -----------------------------

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        // Definições de aparência
        debugShowCheckedModeBanner: false,

        // Definições de navegação
        initialRoute: "/",
        routes: {
          "/": (context) => const TelaPrincipal(),
        }

    );
  }
}

