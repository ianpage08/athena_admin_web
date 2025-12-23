import 'package:flutter/material.dart';

class CardMetricas extends StatelessWidget {
  const CardMetricas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        childAspectRatio: 1.8,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
        children: const [
          _CardItem(
            icon: Icons.people_outline,
            title: 'Alunos',
            value: '320',
            color: Color(0xFF3B82F6),
          ),
          _CardItem(
            icon: Icons.class_outlined,
            title: 'Turmas',
            value: '12',
            color: Color(0xFF8B5CF6),
          ),
          _CardItem(
            icon: Icons.school_outlined,
            title: 'Professores',
            value: '18',
            color: Color(0xFF22C55E),
          ),
          _CardItem(
            icon: Icons.check_circle_outline,
            title: 'Presença média',
            value: '94%',
            color: Color(0xFF14B8A6),
          ),
        ],
      ),
    );
  }
}

// 🔹 CARD INDIVIDUAL
class _CardItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const _CardItem({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          //  BARRA DE STATUS SUPERIOR
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
            ),
          ),

          //  CONTEÚDO
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ÍCONE
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.12),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, size: 24, color: color),
                ),

                const Spacer(),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
