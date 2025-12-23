import 'package:flutter/material.dart';

class Turmas {
  final String nomeTurma;
  final String professor;
  final int numeroAlunos;
  final String periodo;
  final bool status;
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Título + subtítulo
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Turmas',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'Gerencie as turmas da sua escola',
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
            ],
          ),

          // Botão de ação principal
          ElevatedButton.icon(
            onPressed: () {
              // TODO: criar turma
            },
            icon: const Icon(Icons.add, size: 18),
            label: const Text('Criar turma'),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(
                0xFF6366F1,
              ), // mesmo tom das métricas
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
