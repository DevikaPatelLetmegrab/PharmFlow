import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/features/home/presentation/pages/home_page.dart';

class BottomNavigationPage extends StatelessWidget {
  BottomNavigationPage({super.key});

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey78Color,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // currentIndex: tabIndex,
        // onTap: (int index) {
        //   setState(() {
        //     tabIndex = index;
        //   });
        // },
        items: [
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: AppAssets.homeIcon,
              size: 24,
            ),
            label: 'Homne',
          ),
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: AppAssets.calendarIcon,
              size: 24,
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: AppAssets.shoppingCartIcon,
              size: 24,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: AppAssetImage(
              imagePath: AppAssets.profileIcon,
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
            const HomePage(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
