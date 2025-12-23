import 'package:flutter/material.dart';

class AlunosMetricas extends StatelessWidget {
  const AlunosMetricas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 3.2,
        children: const [
          _MetricCard(
            title: 'Total de alunos',
            value: '256',
            icon: Icons.groups,
            color: Color(0xFF6366F1), // Indigo
          ),
          _MetricCard(
            title: 'Ativos',
            value: '230',
            icon: Icons.check_circle,
            color: Color(0xFF22C55E), // Green
          ),
          _MetricCard(
            title: 'Inativos',
            value: '26',
            icon: Icons.cancel,
            color: Color(0xFFEF4444), // Red
          ),
          _MetricCard(
            title: 'Sem responsável',
            value: '8',
            icon: Icons.warning_amber_rounded,
            color: Color(0xFFF59E0B), // Amber
          ),
        ],
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const _MetricCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          // ÍCONE
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(width: 12),

          // TEXTO
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                title,
                style: const TextStyle(fontSize: 13, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
