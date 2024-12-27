import 'package:flutter/material.dart';

class ListaPedaco extends StatelessWidget {
  
  final String nomeTarefa;
  final bool complecao;
  Function(bool?)? onChanged;

  ListaPedaco({super.key, required this.nomeTarefa, required this.complecao, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Checkbox(
                  value: complecao, 
                  onChanged: onChanged
                ),
                Text(nomeTarefa,
                    style: TextStyle(color: Colors.white, fontSize: 25))
              ],
            )));
  }
}
