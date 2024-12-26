import 'package:e_transport/screens/dashboards/Admin/admin_dashboard.dart';
import 'package:e_transport/screens/dashboards/User/user_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool isAdmin = true;
  bool isUser = true;
  bool isDriver = true;
  bool isFamily = true;
  void login(bool isCheck) {

    if(isCheck != isAdmin){
      Get.to(()=> AdminDashboard());
    }
    else if(isCheck==isUser)
      {
        Get.to(()=> UserDashboard());
      }

  }

  void signup() {
    // Implement signup logic
    Get.snackbar("Sign Up", "Sign Up logic to be implemented");
  }
  void GoogleLogin() {
    // Implement signup logic
    Get.snackbar("Google Login", "Google Login logic to be implemented");
  }
}
