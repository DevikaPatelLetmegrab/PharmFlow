import 'package:go_router/go_router.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/features/Registration/presentation/pages/registration_screen.dart';
import 'package:pharm_flow/features/RegistrationProfile/presentation/pages/profile_screen.dart';
import 'package:pharm_flow/features/SignIn/presentation/pages/sign_in_screen.dart';
import 'package:pharm_flow/features/SignIn/presentation/pages/verify_otp_screen.dart';
import 'package:pharm_flow/features/brand/presentation/pages/brand_page.dart';
import 'package:pharm_flow/features/cart/presentation/pages/cart_page.dart';
import 'package:pharm_flow/features/categories/presentation/pages/categories_page.dart';
import 'package:pharm_flow/features/categories/presentation/pages/categories_see_all_page.dart';
import 'package:pharm_flow/features/community_resource/presentation/pages/blog_detail_page.dart';
import 'package:pharm_flow/features/community_resource/presentation/pages/community_resource_page.dart';
import 'package:pharm_flow/features/deal/presentation/pages/deal_page.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/help_and_support_page.dart';
import 'package:pharm_flow/features/home/presentation/pages/home_page.dart';
import 'package:pharm_flow/features/home/presentation/widgets/bottom_navigation_page.dart';
import 'package:pharm_flow/features/home_book_appointment/presentation/pages/home_book_appointment_page.dart';
import 'package:pharm_flow/features/manage_address/presentation/pages/add_new_address_page.dart';
import 'package:pharm_flow/features/manage_address/presentation/pages/checkout_page.dart';
import 'package:pharm_flow/features/manage_address/presentation/pages/manage_address_page.dart';
import 'package:pharm_flow/features/manage_bank/presentation/pages/manage_bank_page.dart';
import 'package:pharm_flow/features/my_appointment/presentation/pages/appointment_details_page.dart';
import 'package:pharm_flow/features/my_appointment/presentation/pages/my_appointment_page.dart';
import 'package:pharm_flow/features/lab/presentation/pages/lab_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/book_appointment_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/details_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/booking_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/patient_details_form.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/patient_details_page.dart';
import 'package:pharm_flow/features/my_favourite/presentation/pages/my_favourite_page.dart';
import 'package:pharm_flow/features/my_prescription/presentation/pages/my_prescription_page.dart';
import 'package:pharm_flow/features/my_profile/presentation/pages/my_profile_page.dart';
import 'package:pharm_flow/features/new_launch/presentation/pages/new_launch_page.dart';
import 'package:pharm_flow/features/notification/presentation/pages/notification_page.dart';
import 'package:pharm_flow/features/order/presentation/pages/order_page.dart';
import 'package:pharm_flow/features/my_prescription/presentation/pages/upload_prescription_page.dart';
import 'package:pharm_flow/features/review/presentation/pages/rating_review_page.dart';
import 'package:pharm_flow/features/search/presentation/pages/search_page.dart';
import 'package:pharm_flow/features/order/presentation/pages/order_details_page.dart';
import 'package:pharm_flow/features/seasonal_product/presentation/pages/seasonal_product_page.dart';
import 'package:pharm_flow/features/splash/presentation/pages/splash_page.dart';
import 'package:pharm_flow/features/top_selling/presentation/pages/top_selling_page.dart';
import 'package:pharm_flow/features/welcome/presentation/pages/welcome_page.dart';
import 'package:pharm_flow/features/wishlist/presentation/pages/wishlist_page.dart';

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
        path: AppRoutes.registrationProfile,
        name: AppRoutes.registrationProfile,
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
        builder: (context, state) => const BookingPage(),
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
        path: AppRoutes.uploadPrescriptionPage,
        name: AppRoutes.uploadPrescriptionPage,
        builder: (context, state) => const UploadPrescriptionPage(),
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
      GoRoute(
        path: AppRoutes.wishListPage,
        name: AppRoutes.wishListPage,
        builder: (context, state) => const WishlistPage(),
      ),
      GoRoute(
        path: AppRoutes.myFavouritePage,
        name: AppRoutes.myFavouritePage,
        builder: (context, state) => const MyFavouritePage(),
      ),
      GoRoute(
        path: AppRoutes.myPrescriptionPage,
        name: AppRoutes.myPrescriptionPage,
        builder: (context, state) => const MyPrescriptionPage(),
      ),
      GoRoute(
        path: AppRoutes.myAppointmentPage,
        name: AppRoutes.myAppointmentPage,
        builder: (context, state) => const MyAppointmentPage(),
      ),
      GoRoute(
        path: AppRoutes.newLaunchPage,
        name: AppRoutes.newLaunchPage,
        builder: (context, state) => const NewLaunchPage(),
      ),
      GoRoute(
        path: AppRoutes.topSellingPage,
        name: AppRoutes.topSellingPage,
        builder: (context, state) => const TopSellingPage(),
      ),
      GoRoute(
        path: AppRoutes.categoriesSellAllPage,
        name: AppRoutes.categoriesSellAllPage,
        builder: (context, state) => const CategoriesSeeAllPage(),
      ),
      GoRoute(
        path: AppRoutes.brandPage,
        name: AppRoutes.brandPage,
        builder: (context, state) => const BrandPage(),
      ),
      GoRoute(
        path: AppRoutes.seasonalPagePage,
        name: AppRoutes.seasonalPagePage,
        builder: (context, state) => const SeasonalProductPage(),
      ),
      GoRoute(
        path: AppRoutes.labPage,
        name: AppRoutes.labPage,
        builder: (context, state) => const LabPage(),
      ),
      GoRoute(
        path: AppRoutes.dealPage,
        name: AppRoutes.dealPage,
        builder: (context, state) => const DealPage(),
      ),
      GoRoute(
        path: AppRoutes.homeBookAppointmentPage,
        name: AppRoutes.homeBookAppointmentPage,
        builder: (context, state) => const HomeBookAppointmentPage(),
      ),
      GoRoute(
          path: AppRoutes.myAppointmentDetailsPage,
          name: AppRoutes.myAppointmentDetailsPage,
          builder: (context, state) {
            var index = state.extra! as int;
            return AppointmentDetailsPage(
              index: index,
            );
          }),
      GoRoute(
        path: AppRoutes.notificationPage,
        name: AppRoutes.notificationPage,
        builder: (context, state) => const NotificationPage(),
      ),
      GoRoute(
        path: AppRoutes.reviewPage,
        name: AppRoutes.reviewPage,
        builder: (context, state) => const RatingReviewPage(),
      ),
      GoRoute(
        path: AppRoutes.manageAddressPage,
        name: AppRoutes.manageAddressPage,
        builder: (context, state) => const ManageAddressPage(),
      ),
      GoRoute(
        path: AppRoutes.addNewAddressPage,
        name: AppRoutes.addNewAddressPage,
        builder: (context, state) => const AddNewAddressPage(),
      ),
      GoRoute(
        path: AppRoutes.manageBankPage,
        name: AppRoutes.manageBankPage,
        builder: (context, state) => const ManageBankPage(),
      ),
      GoRoute(
        path: AppRoutes.cartPage,
        name: AppRoutes.cartPage,
        builder: (context, state) => const CartPage(),
      ),
      GoRoute(
        path: AppRoutes.helpAndSupportPage,
        name: AppRoutes.helpAndSupportPage,
        builder: (context, state) => const HelpAndSupportPage(),
      ),
      GoRoute(
        path: AppRoutes.communityResourcePage,
        name: AppRoutes.communityResourcePage,
        builder: (context, state) => const CommunityResourcePage(),
      ),
      GoRoute(
        path: AppRoutes.blogDetailPage,
        name: AppRoutes.blogDetailPage,
        builder: (context, state) => const BlogDetailPage(),
      ),
      GoRoute(
        path: AppRoutes.checkoutPage,
        name: AppRoutes.checkoutPage,
        builder: (context, state) => const CheckoutPage(),
      ),
    ],
  );
}
