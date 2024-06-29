import 'package:go_router/go_router.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/features/splash/presentation/pages/splash_page.dart';
import 'package:pharm_flow/features/welcome/presentation/pages/welcome_page.dart';

class RoutesUtils {
  var goRoute = GoRouter(
    navigatorKey: NavigationServices().navigatorKey,
    initialLocation: AppRoutes.splashPage,
    routes: [
      GoRoute(
        path: AppRoutes.splashPage,
        name: AppRoutes.splashPage,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoutes.welcomePage,
        name: AppRoutes.welcomePage,
        builder: (context, state) => const WelcomePage(),
      ),
    ],
  );
}
