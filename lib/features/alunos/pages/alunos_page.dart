import 'package:athena_admin_web/features/alunos/widgets/header_alunos.dart';
import 'package:flutter/material.dart';

class AlunosPage extends StatelessWidget {
  const AlunosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(32),

        child: Column(children:
         [
          HeaderAlunos()
          ]),
      ),
    );
  }
}
