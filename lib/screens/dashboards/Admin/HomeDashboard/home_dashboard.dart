import 'package:e_transport/screens/dashboards/Admin/HomeDashboard/widgets/dashboard_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class HomeDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: AppBarColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  DashboardCard(
                    title: 'Total Board Users',
                    value: '12',
                    details: '1830',
                    color: Colors.orange,
                  ),
                  DashboardCard(
                    title: 'Total Active Drivers',
                    value: '4',
                    details: '883',
                    color: Colors.pink,
                  ),
                  DashboardCard(
                    title: 'Live Locations',
                    value: '2',
                    details: '326',
                    color: Colors.purple,
                  ),
                  DashboardCard(
                    title: 'Notifications',
                    value: '8',
                    details: '23',
                    color: Colors.blue,
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
