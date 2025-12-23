import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:athena_admin_web/core/navigation/route_names.dart';
import 'package:athena_admin_web/core/widgets/sidebar/itens_sidebar.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  static const double sidebarWidth = 250;

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    return Container(
      width: sidebarWidth,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1E1B2E), // fundo profissional
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 32),

          // 🔹 MENU
          ItensSidebar(
            label: 'Overview',
            icon: Icons.dashboard_outlined,
            route: RouteNames.dashboard,
            active: location == RouteNames.dashboard,
          ),
          ItensSidebar(
            label: 'Matricular Aluno',
            icon: Icons.person_add,
            route: 'route',
            active: location == 'route',
          ),
          ItensSidebar(
            label: 'Alunos',
            icon: Icons.people_outline,
            route: RouteNames.students,
            active: location == RouteNames.students,
          ),
          ItensSidebar(
            label: 'Turmas',
            icon: Icons.class_outlined,
            route: RouteNames.classes,
            active: location == RouteNames.classes,
          ),
          ItensSidebar(
            label: 'Professores',
            icon: Icons.school_outlined,
            route: RouteNames.teachers,
            active: location == RouteNames.teachers,
          ),
          ItensSidebar(
            label: 'Relatórios',
            icon: Icons.bar_chart_outlined,
            route: RouteNames.reports,
            active: location == RouteNames.reports,
          ),

          const Spacer(),

          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Text(
        'Athena Admin',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        'v1.0.0',
        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 12),
      ),
    );
  }
}
