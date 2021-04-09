import 'package:flutter/material.dart';

class Materias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, indice) {
            print("item $indice");

            return ListTile(
              title: Text(indice.toString()),
            );
          }),
    );
  }
}
