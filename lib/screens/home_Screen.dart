import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_transport/constants/colors.dart';

import 'Auth/login/admin_login.dart';
import 'Auth/login/driver_login.dart';
import 'Auth/login/family_login.dart';
import 'Auth/login/user_login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFA7C6ED),
                  Color(0xFFF0F4F8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    "Welcome to E-Transport",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80,
                    child: Image.asset(
                      'Assets/images/img.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      children: [
                        _buildDashboardButton(
                          context,
                          title: 'Admin Dashboard',
                          icon: Icons.admin_panel_settings,
                          color: Colors.red,
                          onTap: () => Get.to(() => AdminLogin()),
                        ),
                        _buildDashboardButton(
                          context,
                          title: 'User Dashboard',
                          icon: Icons.person,
                          color: Colors.blueGrey,
                          onTap: () => Get.to(() => UserLogin()),
                        ),
                        _buildDashboardButton(
                          context,
                          title: 'Driver Dashboard',
                          icon: Icons.directions_bus,
                          color: Colors.brown,
                          onTap: () => Get.to(() => DriverLogin()),
                        ),
                        _buildDashboardButton(
                          context,
                          title: 'Family Dashboard',
                          icon: Icons.family_restroom,
                          color: Colors.orange,
                          onTap: () => Get.to(() => FamilyLogin()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardButton(BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.indigo.shade200,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color.withOpacity(0.2),
              child: Icon(
                icon,
                size: 50,
                color: color,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
