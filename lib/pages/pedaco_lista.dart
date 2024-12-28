import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class PedacoLista extends StatelessWidget {
  final String nome;
  final bool? complecao;
  Function(bool?)? onChanged;
  Function(BuildContext)? deletar;

  PedacoLista(
      {super.key, required this.nome, this.complecao, required this.onChanged, required this.deletar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Espaço entre os elementos
      padding: const EdgeInsets.only(bottom: 10),
      child: Slidable(
        // Define a animação no final do widget (direita)
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          
          // Widget slidable action que permite mudar o tamanha e cor do icone
          CustomSlidableAction(
            onPressed: deletar,
            backgroundColor: Colors.blue,
            borderRadius: BorderRadius.circular(20),

            // Icone do slidable
            child: Icon(
              Icons.delete,
              size: 30,
              color: Colors.white
            )
          )
        ]),

        child: Container(

            // Margem
            padding: EdgeInsets.all(15),

            // Aparência
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue, width: 3)),

            // Widget descendente:
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              // Elementos:
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),

                  // Caixa de seleção
                  child: Transform.scale(
                    scale: 1.3,
                    child: Checkbox(

                        // Checkbox variáveis
                        value: complecao,
                        onChanged: onChanged,

                        // Checkbox style
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        side: BorderSide(color: Colors.blue, width: 2)),
                  ),
                ),
                Expanded(
                  // Texto do elementoS
                  child: Text(
                    // Texto variável
                    nome,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        decoration: complecao!
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,

                        // Estilo da linha
                        decorationColor: Colors.blue,
                        decorationThickness: 2
                        ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
