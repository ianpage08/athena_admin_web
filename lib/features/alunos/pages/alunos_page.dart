import 'package:athena_admin_web/features/alunos/widgets/alunos_toolbar.dart';
import 'package:athena_admin_web/features/alunos/widgets/data_table_alunos.dart';
import 'package:athena_admin_web/features/alunos/widgets/header_alunos.dart';
import 'package:flutter/material.dart';

class AlunosPage extends StatelessWidget {
  const AlunosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(32),

          child: Column(
            children: [
              HeaderAlunos(),
              const SizedBox(height: 24),

              AlunosToolbar(),
              const SizedBox(height: 24),
              DataTableAlunos(),
            ],
          ),
        ),
      ),
    );
  }
}
