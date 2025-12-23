import 'package:athena_admin_web/features/alunos/widgets/pagination_skeleton.dart';
import 'package:athena_admin_web/features/classe/widgets/table_turma.dart';
import 'package:athena_admin_web/features/classe/widgets/turma_header.dart';
import 'package:athena_admin_web/features/classe/widgets/turma_metricas.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(32),
          child: Column(
            children: [
              TurmaHeader(),
              SizedBox(height: 24),
              TurmasMetricas(),
              SizedBox(height: 24),
              TableTurma(),
              PaginationSkeleton(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
