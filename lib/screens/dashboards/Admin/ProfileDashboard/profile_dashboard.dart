import 'package:e_transport/screens/dashboards/Admin/ProfileDashboard/widgets/profile_options.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class ProfileDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: AppBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('Assets/images/img.png'),
            ),
            const SizedBox(height: 16),
            const Text(
              "Admin Name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "admin@example.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  Divider(),
                  ProfileOption(
                    title: "Settings",
                    icon: Icons.settings,
                  ),
                  Divider(),
                  ProfileOption(
                    title: "Privacy Policy",
                    icon: Icons.privacy_tip,
                  ),
                  Divider(),
                  ProfileOption(
                    title: "Help & Support",
                    icon: Icons.help,
                  ),
                  Divider(),
                  ProfileOption(
                    title: "Language",
                    icon: Icons.translate,
                  ),
                  Divider(),
                  ProfileOption(
                    title: "Logout",
                    icon: Icons.logout,
                    onTap: () {
                      // Handle logout
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
