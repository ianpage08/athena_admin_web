import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AtalhosRapidos extends StatelessWidget {
  const AtalhosRapidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: const [
          _ItemAtalho(
            icon: Icons.person_add_alt_1,
            label: 'Matricular aluno',
            color: Color(0xFF3B82F6),
            route: '/alunos/novo',
          ),
          _ItemAtalho(
            icon: Icons.checklist,
            label: 'Registrar presença',
            color: Color(0xFF8B5CF6),
            route: '/presenca',
          ),
          _ItemAtalho(
            icon: Icons.class_outlined,
            label: 'Criar turma',
            color: Color(0xFF22C55E),
            route: '/turmas/nova',
          ),
          _ItemAtalho(
            icon: Icons.school_outlined,
            label: 'Adicionar professor',
            color: Color(0xFF14B8A6),
            route: '/professores/novo',
          ),
        ],
      ),
    );
  }
}

// 🔹 CARD DE ATALHO
class _ItemAtalho extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final String route;

  const _ItemAtalho({
    required this.icon,
    required this.label,
    required this.color,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(route),
      borderRadius: BorderRadius.circular(14),
      hoverColor: color.withOpacity(0.06),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Color(0x12000000),
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ÍCONE COM FUNDO
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color.withOpacity(0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 20, color: color),
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
