import 'package:flutter/material.dart';

class CurrencyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1, //tem a ver com a proporçao de espaço dos children na row
          child: SizedBox(
            height: 56.5,
            child: DropdownButton(
              isExpanded: true, //faz a setinha ir pro final do campo
              underline: Container(height: 1, color: Colors.amber),
              items: [
                DropdownMenuItem(
                  child: Text('Real'),
                ),
                DropdownMenuItem(
                  child: Text('Dolar'),
                ),
              ],
              onChanged: (value) {},
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
