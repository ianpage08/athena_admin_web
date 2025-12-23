import 'package:flutter/material.dart';

class Turmas {
  final String nomeTurma;
  final String professor;
  final int numeroAlunos;
  final String periodo;
  final String status;
  final String ultimaAtualizacao;

  Turmas({
    required this.nomeTurma,
    required this.professor,
    required this.numeroAlunos,
    required this.periodo,
    required this.status,
    required this.ultimaAtualizacao,
  });
}

class TurmaHeader extends StatelessWidget {
  const TurmaHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Turmas'),
            Text('Gerencie suas Turmas')
            ],
        ),
        Spacer(),
        ElevatedButton.icon(onPressed: () {
          
        }, label: Text('Criar Turma'), icon: Icon(Icons.add),)
      ],
    );
  }
}
