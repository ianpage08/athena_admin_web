import 'package:flutter/material.dart';

class CadastrarMatriculaPage extends StatefulWidget {
  const CadastrarMatriculaPage({super.key});

  @override
  State<CadastrarMatriculaPage> createState() => _CadastrarMatriculaPageState();
}

class _CadastrarMatriculaPageState extends State<CadastrarMatriculaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Matrícula'),
      ),
      body: Center(
        child: Text('Página de Cadastro de Matrícula'),
      ),
    );
  }
}