import 'package:flutter/material.dart';

class TurmasMetricas extends StatelessWidget {
  const TurmasMetricas({super.key});

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
          _MetricaCard(
            titulo: 'Total de turmas',
            valor: '7',
            icon: Icons.class_,
            color: Color(0xFF6366F1), // indigo
          ),
          _MetricaCard(
            titulo: 'Ativas',
            valor: '5',
            icon: Icons.check_circle,
            color: Color(0xFF22C55E), // green
          ),
          _MetricaCard(
            titulo: 'Inativas',
            valor: '2',
            icon: Icons.cancel,
            color: Color(0xFFEF4444), // red
          ),
          _MetricaCard(
            titulo: 'Sem professor',
            valor: '2',
            icon: Icons.warning_amber_rounded,
            color: Color(0xFFF59E0B), // amber
          ),
        ],
      ),
    );
  }
}
class _MetricaCard extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData icon;
  final Color color;

  const _MetricaCard({
    required this.titulo,
    required this.valor,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
        children: [
          // Ícone
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(width: 12),

          // Texto
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                valor,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
