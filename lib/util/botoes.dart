import 'package:flutter/material.dart';
// Classe de botões utilizadas no AlertDialog

// ignore: must_be_immutable
class Botoes extends StatelessWidget {
  final String titulo;
  final Color corPrimaria;
  final Color corSecundaria;
  final IconData icone;
  VoidCallback aoPressionar;

  Botoes(
      {super.key,
      required this.titulo,
      required this.corPrimaria,
      required this.corSecundaria,
      required this.icone,
      required this.aoPressionar});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        // Estilo do botão
        style: ElevatedButton.styleFrom(
            backgroundColor: corPrimaria,
            padding: EdgeInsets.all(10),
            side: BorderSide(
              width: 2,
              color:
                  corSecundaria != Colors.white ? corSecundaria : corPrimaria,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        // Função e estrutura
        onPressed: aoPressionar,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(3, 2, 3, 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Icone e titulo do botão
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(icone, color: corSecundaria),
              ),
              Text(
                titulo,
                style: TextStyle(color: corSecundaria, fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
