import 'package:flutter/material.dart';

class AlunosToolbar extends StatefulWidget {
  const AlunosToolbar({super.key});

  @override
  State<AlunosToolbar> createState() => _AlunosToolbarState();
}

class _AlunosToolbarState extends State<AlunosToolbar> {
  final List<String> turmas = ['Turma A', 'Turma B', 'Turma C', 'Turma D'];
  final List<String> status = ['Todos', 'Ativo', 'Inativo'];

  String? selectedTurma;
  String? selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Wrap(
        spacing: 16,
        runSpacing: 12,
        crossAxisAlignment: WrapCrossAlignment.end,
        children: [
          _buildSearchField(),
          _buildDropdown(
            label: 'Turma',
            value: selectedTurma,
            items: turmas,
            onChanged: (value) => setState(() => selectedTurma = value),
          ),
          _buildDropdown(
            label: 'Status',
            value: selectedStatus,
            items: status,
            onChanged: (value) => setState(() => selectedStatus = value),
          ),
        ],
      ),
    );
  }

  //  CAMPO DE BUSCA
  Widget _buildSearchField() {
    return SizedBox(
      width: 260,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Pesquisar aluno...',
          prefixIcon: const Icon(Icons.search),
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String label,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return SizedBox(
      width: 180,
      child: DropdownButtonFormField<String>(
        value: value,
        hint: Text(label),
        isDense: true,
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        dropdownColor: Colors.white, // fundo do menu aberto
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        items: items.map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(item, style: const TextStyle(fontSize: 14)),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
