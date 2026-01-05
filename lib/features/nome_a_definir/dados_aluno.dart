import 'package:flutter/material.dart';

class DadosAluno extends StatefulWidget {
  const DadosAluno({super.key});

  @override
  State<DadosAluno> createState() => _DadosAlunoState();
}

class _DadosAlunoState extends State<DadosAluno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados do Aluno'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text('Formulário de Dados do Aluno')),
    );
  }
}
