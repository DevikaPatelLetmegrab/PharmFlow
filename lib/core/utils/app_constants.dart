import 'dart:ui';

import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

import 'package:pharm_flow/core/model/chip_model.dart';
import 'package:pharm_flow/core/model/date_model.dart';
import 'package:pharm_flow/core/model/gender_model.dart';
import 'package:pharm_flow/core/model/package_model.dart';
import 'package:pharm_flow/features/categories/data/models/sub_categories_model.dart';
import 'package:pharm_flow/features/home/data/models/choose_model.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/features/profile/data/models/drawer_model.dart';

class AppConstants {
  static const Duration gridAnimDuration375 = Duration(milliseconds: 375);
  static const Duration listAnimDuration300 = Duration(milliseconds: 300);
  static const Duration animDuration300 = Duration(milliseconds: 300);
  static const Duration animDuration200 = Duration(milliseconds: 200);
  static const Duration animDuration100 = Duration(milliseconds: 100);
  static const Duration listShimmerAnimDuration800 =
      Duration(milliseconds: 800);

  static DateTime defaultDate =
      DateTime.parse(DateTime.parse('12/11/2014').toIso8601String());
  static const double defaultScale = 0.5;
  static const double defaultSquircleRadius = 25;

  static List<ChipModel> goalList = [
    ChipModel(title: 'E-Pharmacy ', isSelected: false),
    ChipModel(title: 'Health Metrics ', isSelected: true),
    ChipModel(title: ' Doctor Consultation ', isSelected: false),
    ChipModel(title: ' Statistics ', isSelected: false),
    ChipModel(title: ' AI Symptom Checker ', isSelected: false),
    ChipModel(title: ' Medication Management ', isSelected: true),
    ChipModel(title: ' Education ', isSelected: true),
    ChipModel(title: ' Pill Reminder  ', isSelected: false),
    ChipModel(title: ' Compare Medicine  ', isSelected: false),
    ChipModel(title: ' Assured medicine  ', isSelected: true),
    ChipModel(title: ' Low Price  ', isSelected: true),
  ];

  static List<ChipModel> medialConditionList = [
    ChipModel(title: 'Diabetes', isSelected: false),
    ChipModel(title: 'Athritis', isSelected: true),
    ChipModel(title: 'Asthma', isSelected: false),
    ChipModel(title: 'Depression', isSelected: false),
    ChipModel(title: 'Anxiety', isSelected: false),
    ChipModel(title: 'OCD', isSelected: true),
    ChipModel(title: 'Stroke', isSelected: true),
    ChipModel(title: 'Heart Failure', isSelected: false),
    ChipModel(title: 'Alzheimer', isSelected: false),
    ChipModel(title: 'GERD', isSelected: true),
    ChipModel(title: 'COPD', isSelected: true),
    ChipModel(title: 'High Blood Pressure', isSelected: true),
    ChipModel(title: 'Osteoporosis', isSelected: true),
    ChipModel(title: 'Thyroid', isSelected: false),
    ChipModel(title: 'Carpal Tunnel', isSelected: false),
    ChipModel(title: 'OCD', isSelected: true),
    ChipModel(title: 'High Blood Pressure', isSelected: true),
    ChipModel(title: 'Osteoporosis', isSelected: false),
    ChipModel(title: 'Anxiety', isSelected: true),
    ChipModel(title: 'Carpal Tunnel', isSelected: false),
    ChipModel(title: 'Athritis', isSelected: true),
  ];

  static List<GenderModel> genderList = [
    GenderModel(
        name: 'Male',
        icon: AppAssets.maleIcon,
        isSelected: false,
        desc: 'XY Chromosome'),
    GenderModel(
        name: 'Female',
        icon: AppAssets.femaleIcon,
        isSelected: true,
        desc: 'XX Chromosome'),
  ];

  static List<DateModel> dateList = [
    DateModel(title: 'Mon', content: '12 July', isSelected: true),
    DateModel(title: 'Tue', content: '13 July', isSelected: false),
    DateModel(title: 'Wed', content: '14 July', isSelected: false),
    DateModel(title: 'Thu', content: '15 July', isSelected: false),
    DateModel(title: 'Fri', content: '16 July', isSelected: false),
    DateModel(title: 'Sat', content: '17 July', isSelected: false),
    DateModel(title: 'Sun', content: '18 July', isSelected: false),
  ];

  static List<DateModel> durationList = [
    DateModel(title: '10', content: 'Minutes', isSelected: true),
    DateModel(title: '20', content: 'Minutes', isSelected: false),
    DateModel(title: '30', content: 'Minutes', isSelected: false),
    DateModel(title: '40', content: 'Minutes', isSelected: false),
    DateModel(title: '50', content: 'Minutes', isSelected: false),
    DateModel(title: '60', content: 'Minutes', isSelected: false),
  ];

  static List<DateModel> timeList = [
    DateModel(title: '08:00', content: 'AM', isSelected: true),
    DateModel(title: '09:00', content: 'AM', isSelected: false),
    DateModel(title: '10:00', content: 'AM', isSelected: false),
    DateModel(title: '11:00', content: 'AM', isSelected: false),
    DateModel(title: '12:00', content: 'PM', isSelected: false),
    DateModel(title: '01:00', content: 'PM', isSelected: false),
    DateModel(title: '02:00', content: 'PM', isSelected: false),
    DateModel(title: '03:00', content: 'PM', isSelected: false),
    DateModel(title: '04:00', content: 'PM', isSelected: false),
    DateModel(title: '05:00', content: 'PM', isSelected: false),
    DateModel(title: '06:00', content: 'PM', isSelected: false),
    DateModel(title: '07:00', content: 'PM', isSelected: false),
  ];

  static List<PackageModel> packageList = [
    PackageModel(
        title: 'Message',
        content: 'Chat With Doctor',
        icon: AppAssets.messageOutlineIcon,
        price: '20',
        isSelected: false),
    PackageModel(
        title: 'Voice Call',
        content: 'Voice Call With Doctor',
        icon: AppAssets.callIcon,
        price: '20',
        isSelected: false),
    PackageModel(
        title: 'Video Call',
        content: 'Video Call With Doctor',
        icon: AppAssets.videoCallIcon,
        price: '20',
        isSelected: false),
  ];

  static List<String> avtarList = [
    AppAssets.avtar2,
    AppAssets.avtar3,
    AppAssets.avtar1,
  ];

  static List<ChipModel> dateWiseFilter = [
    ChipModel(title: 'This Week', isSelected: false),
    ChipModel(title: 'Last Month ', isSelected: true),
    ChipModel(title: 'Last Week ', isSelected: false),
    ChipModel(title: 'This Month', isSelected: false),
    ChipModel(title: 'This Year', isSelected: false),
    ChipModel(title: 'Last Year', isSelected: true),
  ];

  static List<ChipModel> orderWiseFilter = [
    ChipModel(title: 'Delivery', isSelected: false),
    ChipModel(title: 'Shipped', isSelected: true),
    ChipModel(title: 'Return', isSelected: false),
    ChipModel(title: 'Cancelled', isSelected: false),
    ChipModel(title: 'Replace', isSelected: false),
    ChipModel(title: 'Placed', isSelected: true),
  ];
  static List<DrawerModel> drawerItems = [
    DrawerModel(
        assetImage: AppAssets.userOutlineIcon,
        index: 1,
        title: 'My Profile',
        route: AppRoutes.myProfilePage),
    DrawerModel(
      assetImage: AppAssets.shoppingCartIcon,
      index: 2,
      title: 'My Cart',
      route: '',
    ),
    DrawerModel(
      assetImage: AppAssets.noteIcon,
      index: 3,
      route: AppRoutes.myPrescriptionPage,
      title: 'My Prescription',
    ),
    DrawerModel(
      assetImage: AppAssets.starOutlineIcon,
      index: 4,
      title: 'My Favourite',
      route: AppRoutes.myFavouritePage,
    ),
    DrawerModel(
      assetImage: AppAssets.calenderOutlineIcon,
      index: 5,
      title: 'My Appointment',
      route: AppRoutes.myAppointmentPage,
    ),
    DrawerModel(
      assetImage: AppAssets.heartIcon,
      index: 6,
      route: AppRoutes.wishListPage,
      title: 'My Wishlist',
    ),
    DrawerModel(
      assetImage: AppAssets.starOutlineIcon,
      index: 7,
      title: 'My Reviews',
      route: '',
    ),
    DrawerModel(
      assetImage: AppAssets.locationIcon,
      index: 8,
      route: '',
      title: 'Manage Address',
    ),
    DrawerModel(
      assetImage: AppAssets.bankIcon,
      index: 9,
      route: '',
      title: 'Manage Bank',
    ),
    DrawerModel(
      assetImage: AppAssets.supportIcon,
      index: 10,
      title: 'Help & Support',
      route: '',
    ),
    DrawerModel(
      assetImage: AppAssets.securityIcon,
      index: 11,
      route: '',
      title: 'Privacy Policy',
    ),
    DrawerModel(
      assetImage: AppAssets.logoutIcon,
      index: 12,
      route: '',
      title: 'Log Out',
    ),
  ];

  static List<ChooseModel> chooseList = [
    ChooseModel(
        image: AppAssets.peopleIcon,
        title: '10 million +',
        content: 'registered user as of may 10,2024'),
    ChooseModel(
        image: AppAssets.millionIcon,
        title: '24 million +',
        content: 'orders on pharmflow till date'),
    ChooseModel(
        image: AppAssets.pillsIcon,
        title: '890000 +',
        content: 'unique items sold last 3 months'),
    ChooseModel(
        image: AppAssets.locationIcon,
        title: '18000 +',
        content: 'pin codes services last 3 months'),
  ];

  static List<SubCategoriesModel> subCategoriesList = [
    SubCategoriesModel(title: 'medicines', img: AppAssets.imageD),
    SubCategoriesModel(title: 'doctor', img: AppAssets.docCategories),
    SubCategoriesModel(title: 'Lab Test', img: AppAssets.labTest),
    SubCategoriesModel(title: 'compare medicine', img: AppAssets.medicin)
  ];

  static List<Color> colorList = [
    AppColors.blueLight,
    AppColors.pinkLight,
  ];
}
