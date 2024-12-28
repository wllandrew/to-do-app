import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PedacoLista extends StatelessWidget {
  final String nome;
  final bool? complecao;
  Function(bool?)? onChanged;

  PedacoLista({super.key, required this.nome , this.complecao, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(

        // Margem
        padding: EdgeInsets.all(15),

        // Aparência
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),

        // Widget descendente:
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          // Elementos:
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),

              // Caixa de seleção
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                
                  // Checkbox variáveis
                  value: complecao, 
                  onChanged: onChanged,

                  // Checkbox style
                  activeColor: Colors.white,
                  checkColor: Colors.blue,
                  side: BorderSide(
                    color: Colors.white,
                    width: 2
                  )
                
                ),
              ),
            ),
            Expanded(

              // Texto do elementoS
              child: Text(

                  // Texto variável
                  nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    decoration: complecao! ? TextDecoration.lineThrough : TextDecoration.none
                  ),
              ),
            ),
          ],
        ));
  }
}
