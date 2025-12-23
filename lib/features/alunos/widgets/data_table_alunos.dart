import 'package:flutter/material.dart';

class Aluno {
  final String nome;
  final String turma;
  final int idade;
  final String responsavel;
  final String contato;
  final bool ativo;

  Aluno({
    required this.nome,
    required this.turma,
    required this.idade,
    required this.responsavel,
    required this.contato,
    required this.ativo,
  });
}

class DataTableAlunos extends StatefulWidget {
  const DataTableAlunos({super.key});

  @override
  State<DataTableAlunos> createState() => _DataTableAlunosState();
}

class _DataTableAlunosState extends State<DataTableAlunos> {
  final List<Aluno> alunosMock = [
    Aluno(
      nome: 'João Silva',
      turma: 'Turma 8A',
      idade: 14,
      responsavel: 'Júlia Souza',
      contato: '97987-6543',
      ativo: true,
    ),
    Aluno(
      nome: 'Laura Rocha',
      turma: 'Turma 9B',
      idade: 15,
      responsavel: 'Marcos Rocha',
      contato: '98987-6540',
      ativo: true,
    ),
    Aluno(
      nome: 'Camila Santos',
      turma: 'Turma 5A',
      idade: 10,
      responsavel: 'Fernanda Santos',
      contato: '98765-4321',
      ativo: true,
    ),
    Aluno(
      nome: 'Pedro Almeida',
      turma: 'Turma 6C',
      idade: 12,
      responsavel: 'Ricardo Almeida',
      contato: '96456-7890',
      ativo: true,
    ),
    Aluno(
      nome: 'Lucas Oliveira',
      turma: 'Turma 8A',
      idade: 14,
      responsavel: 'Alexandre Oliveira',
      contato: '97997-6542',
      ativo: true,
    ),
    Aluno(
      nome: 'Gabriela Lima',
      turma: 'Turma 7B',
      idade: 13,
      responsavel: 'Carla Lima',
      contato: '97765-4321',
      ativo: true,
    ),
    Aluno(
      nome: 'Ricardo Souza',
      turma: 'Turma 3C',
      idade: 8,
      responsavel: 'Patrícia Souza',
      contato: '98765-1234',
      ativo: false,
    ),
    Aluno(
      nome: 'Ana Martins',
      turma: 'Turma 9B',
      idade: 15,
      responsavel: 'Rodrigo Martins',
      contato: '99678-1209',
      ativo: true,
    ),
    Aluno(
      nome: 'Felipe Costa',
      turma: 'Turma 4A',
      idade: 9,
      responsavel: 'Mariana Costa',
      contato: '98812-3344',
      ativo: true,
    ),
    Aluno(
      nome: 'Beatriz Nogueira',
      turma: 'Turma 6B',
      idade: 11,
      responsavel: 'Eduardo Nogueira',
      contato: '99123-7788',
      ativo: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F7FB),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: DataTable(
        headingRowHeight: 56,
        columnSpacing: 32,
        dividerThickness: 0.6,
        headingTextStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
        dataTextStyle: const TextStyle(fontSize: 14, color: Colors.black87),
        columns: const [
          DataColumn(label: Text('Nome')),
          DataColumn(label: Text('Turma')),
          DataColumn(label: Text('Idade')),
          DataColumn(label: Text('Responsável')),
          DataColumn(label: Text('Contato')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('')),
        ],
        rows: alunosMock.map((aluno) => _buildRow(aluno)).toList(),
      ),
    );
  }

  DataRow _buildRow(Aluno aluno) {
    return DataRow(
      cells: [
        DataCell(_buildNome(aluno.nome)),
        DataCell(Text(aluno.turma)),
        DataCell(Text(aluno.idade.toString())),
        DataCell(Text(aluno.responsavel)),
        DataCell(_buildContato(aluno.contato)),
        DataCell(_buildStatus(aluno.ativo)),
        DataCell(_buildActions()),
      ],
    );
  }

  Widget _buildNome(String nome) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.blue.shade100,
          child: Text(
            nome[0],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            nome,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _buildContato(String contato) {
    return Row(
      children: [
        const Icon(Icons.phone, size: 16, color: Colors.green),
        const SizedBox(width: 4),
        Text(contato, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildStatus(bool ativo) {
    final color = ativo ? Colors.green : Colors.red;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        ativo ? 'Ativo' : 'Inativo',
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
      child: const Icon(Icons.more_horiz, size: 20, color: Colors.black54),
    );
  }
}
