import 'package:athena_admin_web/core/widgets/sidebar/app_sidebar.dart';
import 'package:athena_admin_web/features/dashboard/metricas.dart';
import 'package:athena_admin_web/features/dashboard/topbar_usuario.dart';
import 'package:athena_admin_web/features/dashboard/widgets/card_metricas.dart';
import 'package:athena_admin_web/features/dashboard/widgets/placeholder_grafico.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [Expanded(child: AppSidebar())]),
          Expanded(
            child: Column(
              children: [
                TopbarUsuario(),
                _buildHeader(),
                CardMetricas(),
                PlaceholderGrafico(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const Text(
      'Dashboard',
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}
