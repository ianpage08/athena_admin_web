import 'package:flutter/material.dart';

class PaginationSkeleton extends StatelessWidget {
  const PaginationSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🔹 TEXTO ESQUERDA
          const Text(
            '1–10 de 256 alunos',
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(width: 50),

          // 🔹 PÁGINAS
          Row(
            children: [
              _pageButton(Icons.chevron_left),
              _pageNumber('1', active: true),
              _pageNumber('2'),
              _pageNumber('3'),
              _pageNumber('4'),
              _pageNumber('5'),
              _pageButton(Icons.chevron_right),
            ],
          ),
          const SizedBox(width: 50),

          // 🔹 POR PÁGINA
          DropdownButton<String>(
            value: '10',
            items: const [
              DropdownMenuItem(value: '10', child: Text('10 por página')),
              DropdownMenuItem(value: '20', child: Text('20 por página')),
              DropdownMenuItem(value: '50', child: Text('50 por página')),
            ],
            onChanged: (_) {},
          ),
        ],
      ),
    );
  }

  Widget _pageButton(IconData icon) {
    return IconButton(onPressed: () {}, icon: Icon(icon), splashRadius: 18);
  }

  Widget _pageNumber(String label, {bool active = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: active ? Colors.blue.withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: active ? Colors.blue : Colors.black87,
        ),
      ),
    );
  }
}
