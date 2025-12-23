import 'package:flutter/material.dart';

class HeaderAlunos extends StatelessWidget {
  const HeaderAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alunos',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Gerencie a lista de alunos  de sua escola',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          label: Text('Matricular Aluno'),
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
