import 'package:athena_admin_web/features/classe/widgets/turma_header.dart';
import 'package:flutter/material.dart';

class TableTurma extends StatefulWidget {
  const TableTurma({super.key});

  @override
  State<TableTurma> createState() => _TableTurmaState();
}

class _TableTurmaState extends State<TableTurma> {
  final List<Turmas> turmasMock = [
    Turmas(
      nomeTurma: 'Turma 8A',
      professor: 'Bruno Mendes',
      numeroAlunos: 23,
      periodo: 'Manhã',
      status: true,
      ultimaAtualizacao: 'Há 1 dia',
    ),
    Turmas(
      nomeTurma: 'Turma 9B',
      professor: 'Mariana Costa',
      numeroAlunos: 28,
      periodo: 'Tarde',
      status: true,
      ultimaAtualizacao: 'Há 2 dias',
    ),
    Turmas(
      nomeTurma: 'Turma 5A',
      professor: '-',
      numeroAlunos: 20,
      periodo: 'Manhã',
      status: false,
      ultimaAtualizacao: 'Há 4 dias',
    ),
    Turmas(
      nomeTurma: 'Turma 6C',
      professor: 'Juliana Lima',
      numeroAlunos: 18,
      periodo: 'Tarde',
      status: true,
      ultimaAtualizacao: 'Há 8 horas',
    ),
    Turmas(
      nomeTurma: 'Turma 7B',
      professor: 'Patrícia Souza',
      numeroAlunos: 25,
      periodo: 'Manhã',
      status: true,
      ultimaAtualizacao: 'Há 3 dias',
    ),
    Turmas(
      nomeTurma: 'Turma 4A',
      professor: '-',
      numeroAlunos: 20,
      periodo: 'Manhã',
      status: true,
      ultimaAtualizacao: 'Há 7 dias',
    ),
    Turmas(
      nomeTurma: 'Turma 3C',
      professor: 'Carlos Almeida',
      numeroAlunos: 16,
      periodo: 'Tarde',
      status: false,
      ultimaAtualizacao: 'Há 10 dias',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: DataTable(
        headingRowHeight: 56,
        dataRowHeight: 60,
        columnSpacing: 32,
        dividerThickness: 0.6,
        headingTextStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 13,
          color: Colors.black87,
        ),
        dataTextStyle: const TextStyle(fontSize: 14, color: Colors.black87),
        columns: const [
          DataColumn(label: Text('Turma')),
          DataColumn(label: Text('Professor')),
          DataColumn(label: Text('Alunos')),
          DataColumn(label: Text('Período')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Última atualização')),
          DataColumn(label: SizedBox()),
        ],
        rows: turmasMock.map(_buildRow).toList(),
      ),
    );
  }

  DataRow _buildRow(Turmas turma) {
    return DataRow(
      cells: [
        DataCell(_buildTurma(turma.nomeTurma)),
        DataCell(_buildProfessor(turma.professor)),
        DataCell(Text(turma.numeroAlunos.toString())),
        DataCell(Text(turma.periodo)),
        DataCell(_buildStatus(turma.status)),
        DataCell(
          Text(
            turma.ultimaAtualizacao,
            style: const TextStyle(color: Colors.black54, fontSize: 13),
          ),
        ),
        DataCell(_buildActions()),
      ],
    );
  }

  Widget _buildTurma(String nome) {
    return Text(nome, style: const TextStyle(fontWeight: FontWeight.w600));
  }

  Widget _buildProfessor(String professor) {
    if (professor == '-' || professor.isEmpty) {
      return const Text(
        'Sem professor',
        style: TextStyle(color: Colors.redAccent),
      );
    }

    return Text(professor);
  }

  Widget _buildStatus(bool ativo) {
    final color = ativo ? Colors.green : Colors.red;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        ativo ? 'Ativa' : 'Inativa',
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildActions() {
    return PopupMenuButton<String>(
      tooltip: 'Ações',
      onSelected: (value) {},
      itemBuilder: (context) => const [
        PopupMenuItem(value: 'ver', child: Text('Ver detalhes')),
        PopupMenuItem(value: 'editar', child: Text('Editar')),
        PopupMenuItem(value: 'inativar', child: Text('Inativar')),
      ],
      child: const Icon(Icons.edit, size: 20, color: Colors.black54),
    );
  }
}
