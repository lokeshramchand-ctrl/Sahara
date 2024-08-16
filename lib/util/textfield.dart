import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: const TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent)),
              hintText: 'Search'),
        ));
  }
}
