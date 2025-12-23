import 'package:athena_admin_web/features/classe/widgets/turma_header.dart';
import 'package:flutter/material.dart';

class TurmasPage extends StatefulWidget {
  const TurmasPage({super.key});

  @override
  State<TurmasPage> createState() => _TurmasPageState();
}

class _TurmasPageState extends State<TurmasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(32),
        child: Column(children: [TurmaHeader()]),
      ),
    );
  }
}
