import 'package:flutter/material.dart';

class HeaderAlunos extends StatelessWidget {
  const HeaderAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 TÍTULO + DESCRIÇÃO
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Alunos',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                'Gerencie a lista de alunos da sua escola',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ],
          ),

          // 🔹 BOTÃO PRINCIPAL
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person_add_alt_1),
            label: const Text('Matricular aluno'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF22C55E), // verde premium
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
