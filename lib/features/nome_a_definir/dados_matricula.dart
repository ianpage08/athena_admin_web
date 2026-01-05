import 'package:flutter/material.dart';

class DadosMatricula extends StatefulWidget {
  const DadosMatricula({super.key});

  @override
  State<DadosMatricula> createState() => _DadosMatriculaState();
}

class _DadosMatriculaState extends State<DadosMatricula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados da Matrícula'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text('Formulário de Dados da Matrícula')),
    );
  }
}