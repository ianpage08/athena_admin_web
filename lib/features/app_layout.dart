import 'package:athena_admin_web/core/widgets/sidebar/app_sidebar.dart';
import 'package:flutter/material.dart';

import '../../features/dashboard/topbar_usuario.dart';

class AppLayout extends StatelessWidget {
  final Widget child;

  const AppLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //  SIDEBAR FIXA À ESQUERDA
          const AppSidebar(),

          //  ÁREA PRINCIPAL
          Expanded(
            child: Column(
              children: [
                // TOPBAR NO TOPO
                const TopbarUsuario(),

                //  CONTEÚDO DINÂMICO
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
