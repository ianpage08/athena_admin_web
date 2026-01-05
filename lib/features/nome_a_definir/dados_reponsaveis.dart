import 'package:flutter/material.dart';

class DadosReponsaveis extends StatefulWidget {
  const DadosReponsaveis({super.key});

  @override
  State<DadosReponsaveis> createState() => _DadosReponsaveisState();
}

class _DadosReponsaveisState extends State<DadosReponsaveis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados dos Responsáveis'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text('Formulário de Dados dos Responsáveis')),
    );
  }
}