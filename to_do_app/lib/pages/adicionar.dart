import 'package:flutter/material.dart';

class AdicionarTarefa extends StatelessWidget {
  
  // Atributos requeridos
  final controlador;
  VoidCallback salvar;
  VoidCallback cancelar;

  AdicionarTarefa({super.key, 
    required this.controlador,
    required this.salvar,
    required this.cancelar
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      // Estilo da Caixa de alerta
      backgroundColor: Colors.white,

      // Conteúdo
      content: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(

            // Tamanho da janela
            height: MediaQuery.sizeOf(context).height / 3,
            width: MediaQuery.sizeOf(context).width - 20,

            // Disposição dos elementos da janela
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Título da mensagem alerta
                  Text("Adicionar Tarefa",
                      style: TextStyle(
                        fontSize: 30,
                      )),

                  // Campo de inserção
                  TextField(
                    // Estilo do campo de texto
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: "Nome da tarefa",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),

                    controller: controlador,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      // Botões
                      Botoes(
                          titulo: "Cancelar",
                          corPrimaria: Colors.white,
                          corSecundaria: Colors.blue,
                          icone: Icons.cancel,
                          aoPressionar: cancelar),
                      Botoes(
                          titulo: "Adicionar",
                          corPrimaria: Colors.blue,
                          corSecundaria: Colors.white,
                          icone: Icons.add,
                          aoPressionar: salvar),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

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
