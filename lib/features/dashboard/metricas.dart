import 'package:flutter/material.dart';

class Metricas extends StatelessWidget {
  const Metricas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 24),
          _buildStatsGrid(),
          const SizedBox(height: 32),
          
        ],
      ),
    );
  }

  // 🔹 TÍTULO
  Widget _buildHeader() {
    return const Text(
      'Dashboard',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // 🔹 CARDS DE MÉTRICAS
  Widget _buildStatsGrid() {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        _StatCard(
          title: 'Alunos',
          value: '320',
          icon: Icons.people_outline,
        ),
        _StatCard(
          title: 'Turmas',
          value: '12',
          icon: Icons.class_outlined,
        ),
        _StatCard(
          title: 'Professores',
          value: '18',
          icon: Icons.school_outlined,
        ),
        _StatCard(
          title: 'Presença média',
          value: '94%',
          icon: Icons.check_circle_outline,
        ),
      ],
    );
  }

  // 🔹 ESPAÇO PARA GRÁFICO
  
}

// 🔸 CARD REUTILIZÁVEL
class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 28),
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
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
