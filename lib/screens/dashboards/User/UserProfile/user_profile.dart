import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: AppBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue.shade100,
              child: Icon(Icons.person, size: 50, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Text('User Name', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('user@example.com', style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 20),
            Divider(thickness: 1),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
