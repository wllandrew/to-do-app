import 'package:flutter/material.dart';
import 'package:to_do_app/util/botoes.dart';

// ignore: must_be_immutable
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
        padding: const EdgeInsets.all(5),
        child: SizedBox(
            // Tamanho da janela
            height: MediaQuery.sizeOf(context).height / 3,
            width: MediaQuery.sizeOf(context).width - 10,

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

