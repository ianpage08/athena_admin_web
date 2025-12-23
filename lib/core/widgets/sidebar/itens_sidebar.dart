import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItensSidebar extends StatelessWidget {
  final String label;
  final IconData icon;
  final String route;
  final bool active;

  const ItensSidebar({
    super.key,
    required this.label,
    required this.icon,
    required this.route,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(route),
      borderRadius: BorderRadius.circular(10),
      hoverColor: Colors.white.withOpacity(0.05),
      splashColor: Colors.white.withOpacity(0.08),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: active ? Colors.white.withOpacity(0.08) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: active ? Colors.white : Colors.white70,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                color: active ? Colors.white : Colors.white70,
                fontSize: 14,
                fontWeight: active ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
