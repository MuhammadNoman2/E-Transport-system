import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_transport/constants/colors.dart';

import 'HomeDashboard/home_dashboard.dart';
import 'ManageDashboard/manage_dashboard.dart';
import 'ProfileDashboard/profile_dashboard.dart';
import 'viewDashboard/view_dashboard.dart';

class AdminDashboardController extends GetxController {
  var selectedIndex = 0.obs;

  void switchTab(int index) {
    selectedIndex.value = index;
  }
}

class AdminDashboard extends StatefulWidget {
  AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final AdminDashboardController controller = Get.put(AdminDashboardController());

  final List<String> tabTitles = [
    'Home',
    'View',
    'Manage',
    'Profile',
  ];

  final List<Widget> tabs = [
    HomeDashboard(),
    ViewDashboard(),
    ManageDashboard(),
    ProfileDashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Obx(() => tabs[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.switchTab,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          backgroundColor: AppBarColor,
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppBarColor,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppBarColor,
              icon: Icon(Icons.view_list),
              label: 'View',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppBarColor,
              icon: Icon(Icons.manage_accounts),
              label: 'Manage',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppBarColor,
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}







