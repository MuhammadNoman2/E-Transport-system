import 'package:e_transport/screens/dashboards/Admin/ManageDashboard/widgets/manage_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class ManageDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Dashboards"),
        backgroundColor: AppBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ManageCard(
                    title: "Manage Users",
                    description: "Edit or remove user details",
                    icon: Icons.person,
                    color: Colors.blue,
                  ),
                  ManageCard(
                    title: "Manage Families",
                    description: "Manage family groups and members",
                    icon: Icons.family_restroom,
                    color: Colors.green,
                  ),
                  ManageCard(
                    title: "Manage Drivers",
                    description: "Update driver details",
                    icon: Icons.directions_bus,
                    color: Colors.orange,
                  ),
                  ManageCard(
                    title: "Manage Locations",
                    description: "Update location information",
                    icon: Icons.location_on,
                    color: Colors.red,
                  ),
                  ManageCard(
                    title: "Manage Notifications",
                    description: "Send or manage app notifications",
                    icon: Icons.notifications,
                    color: Colors.purple,
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
