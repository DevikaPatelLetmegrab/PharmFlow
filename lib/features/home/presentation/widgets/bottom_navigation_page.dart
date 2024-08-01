import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/features/home/presentation/pages/home_page.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/booking_page.dart';
import 'package:pharm_flow/features/order/presentation/pages/order_page.dart';
import 'package:pharm_flow/features/profile/presentation/pages/profile_page.dart';

class BottomNavigationPage extends StatefulWidget {
  BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // selectedIconTheme: const IconThemeData(color: AppColors.primary),
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey78Color,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: _selectedIndex == 0
                  ? AppAssets.homeDarkIcon
                  : AppAssets.homeLightIcon,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: _selectedIndex == 1
                  ? AppAssets.calendarDarkIcon
                  : AppAssets.calendarLightIcon,
              size: 24,
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: _selectedIndex == 2
                  ? AppAssets.orderDarkIcon
                  : AppAssets.orderLightIcon,
              color: _selectedIndex != 2 ? AppColors.grey78Color : null,
              size: 24,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: _selectedIndex == 3
                  ? AppAssets.profileDarkIcon
                  : AppAssets.profileLightIcon,
              size: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(),
            const BookingPage(),
            const OrderPage(),
            const ProfilePage(),
          ],
        ),
      ),
    );
  }
}
