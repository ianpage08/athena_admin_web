import 'package:athena_admin_web/core/navigation/route_names.dart';
import 'package:athena_admin_web/features/dashboard/dashboard_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.dashboard,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RouteNames.dashboard,
        pageBuilder: (context, state) =>  const NoTransitionPage(child: DashboardPage()),
      ),
    ]);
}
