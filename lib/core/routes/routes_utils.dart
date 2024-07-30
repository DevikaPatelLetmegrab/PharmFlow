import 'package:go_router/go_router.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/features/Registration/presentation/pages/registration_screen.dart';
import 'package:pharm_flow/features/RegistrationProfile/presentation/pages/profile_screen.dart';
import 'package:pharm_flow/features/SignIn/presentation/pages/sign_in_screen.dart';
import 'package:pharm_flow/features/SignIn/presentation/pages/verify_otp_screen.dart';
import 'package:pharm_flow/features/categories/presentation/pages/categories_page.dart';
import 'package:pharm_flow/features/home/presentation/pages/home_page.dart';
import 'package:pharm_flow/features/home/presentation/widgets/bottom_navigation_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/book_appointment_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/details_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/my_booking_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/patient_details_form.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/patient_details_page.dart';
import 'package:pharm_flow/features/my_profile/presentation/pages/my_profile_page.dart';
import 'package:pharm_flow/features/order/presentation/pages/order_page.dart';
import 'package:pharm_flow/features/prescription/presentation/pages/prescription_page.dart';
import 'package:pharm_flow/features/search/presentation/pages/search_page.dart';
import 'package:pharm_flow/features/order/presentation/pages/order_details_page.dart';
import 'package:pharm_flow/features/splash/presentation/pages/splash_page.dart';
import 'package:pharm_flow/features/welcome/presentation/pages/welcome_page.dart';

class RoutesUtils {
  var goRoute = GoRouter(
    navigatorKey: NavigationServices().navigatorKey,
    initialLocation: AppRoutes.bottomBar,
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
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: AppRoutes.bookingPage,
        name: AppRoutes.bookingPage,
        builder: (context, state) => const MyBookingPage(),
      ),
      GoRoute(
        path: AppRoutes.bottomBar,
        name: AppRoutes.bottomBar,
        builder: (context, state) => BottomNavigationPage(),
      ),
      GoRoute(
        path: AppRoutes.detailsPage,
        name: AppRoutes.detailsPage,
        builder: (context, state) => const DetailsPage(),
      ),
      GoRoute(
        path: AppRoutes.bookAppointmentPage,
        name: AppRoutes.bookAppointmentPage,
        builder: (context, state) => const BookAppointmentPage(),
      ),
      GoRoute(
        path: AppRoutes.patientDetailsForm,
        name: AppRoutes.patientDetailsForm,
        builder: (context, state) => const PatientDetailsForm(),
      ),
      GoRoute(
        path: AppRoutes.patientDetailsPage,
        name: AppRoutes.patientDetailsPage,
        builder: (context, state) => const PatientDetailsPage(),
      ),
      GoRoute(
        path: AppRoutes.searchPage,
        name: AppRoutes.searchPage,
        builder: (context, state) => const SearchPage(),
      ),
      GoRoute(
        path: AppRoutes.orderDetailPage,
        name: AppRoutes.orderDetailPage,
        builder: (context, state) => const OrderDetailsPage(),
      ),
      GoRoute(
        path: AppRoutes.prescriptionPage,
        name: AppRoutes.prescriptionPage,
        builder: (context, state) => const PrescriptionPage(),
      ),
      GoRoute(
        path: AppRoutes.categoriesPage,
        name: AppRoutes.categoriesPage,
        builder: (context, state) => const CategoriesPage(),
      ),
      GoRoute(
        path: AppRoutes.myProfilePage,
        name: AppRoutes.myProfilePage,
        builder: (context, state) => const MyProfilePage(),
      ),
      GoRoute(
        path: AppRoutes.orderPage,
        name: AppRoutes.orderPage,
        builder: (context, state) => const OrderPage(
          showLeading: true,
        ),
      ),
    ],
  );
}
