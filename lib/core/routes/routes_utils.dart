import 'package:go_router/go_router.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/features/Registration/presentation/pages/registration_screen.dart';
import 'package:pharm_flow/features/RegistrationProfile/presentation/pages/profile_screen.dart';
import 'package:pharm_flow/features/SignIn/presentation/pages/sign_in_screen.dart';
import 'package:pharm_flow/features/SignIn/presentation/pages/verify_otp_screen.dart';
import 'package:pharm_flow/features/home/presentation/pages/home_page.dart';
import 'package:pharm_flow/features/home/presentation/widgets/bottom_navigation_page.dart';
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
        builder: (context, state) => WelcomePage(),
      ),
      GoRoute(
        path: AppRoutes.loginPage,
        name: AppRoutes.loginPage,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: AppRoutes.verifyPage,
        name: AppRoutes.verifyPage,
        builder: (context, state) {
          var arg = state.extra as bool;
          return VerifyOtpScreen(isLogin: arg);
        },
      ),
      GoRoute(
        path: AppRoutes.registrationPage,
        name: AppRoutes.registrationPage,
        builder: (context, state) => const RegistrationScreen(),
      ),
      GoRoute(
        path: AppRoutes.registrationprofile,
        name: AppRoutes.registrationprofile,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.homePage,
        name: AppRoutes.homePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutes.bottomBar,
        name: AppRoutes.bottomBar,
        builder: (context, state) => BottomNavigationPage(),
      )
    ],
  );
}
