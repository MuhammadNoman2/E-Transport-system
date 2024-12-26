import 'package:e_transport/screens/dashboards/Admin/viewDashboard/widgtes/view_dataCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class ViewDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Data"),
        backgroundColor: AppBarColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ViewDataCard(
              title: "User Data",
              description: "View all registered users",
              icon: Icons.people,
              color: Colors.blue,
            ),
            ViewDataCard(
              title: "Family Data",
              description: "View all family groups",
              icon: Icons.group,
              color: Colors.green,
            ),
            ViewDataCard(
              title: "Driver Data",
              description: "View all drivers",
              icon: Icons.directions_bus,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
