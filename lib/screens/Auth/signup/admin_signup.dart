import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../controllers/auth_controller.dart';
import '../../../widgtes/Auth_widgets/custom_buttom.dart';
import '../../../widgtes/Auth_widgets/custom_textfield.dart';

class AdminSignup extends StatefulWidget {
  const AdminSignup({super.key});

  @override
  State<AdminSignup> createState() => _AdminSignupState();
}

class _AdminSignupState extends State<AdminSignup> {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor.withOpacity(0.8),
        title: const Text("Admin Sign Up"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 80,
                child: Image(
                  image: AssetImage('Assets/images/img.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "Create Your Account",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: authController.fullNameController,
                hintText: "Enter your Full Name",
              ),
              CustomTextFormField(
                controller: authController.emailController,
                hintText: "Enter your email",
              ),

              CustomTextFormField(
                controller: authController.passwordController,
                hintText: "Enter your password",
                obscureText: true,
              ),
              CustomTextFormField(
                controller: authController.confirmPasswordController,
                hintText: "Confirm your password",
                obscureText: true,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Sign Up",
                onPressed: authController.signup,
              ),
              const SizedBox(height: 10),

              Wrap(
                children:[
                  Text("Already have an Account, ", style: TextStyle(
                    fontSize: 16,
                  ),),
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Text("Login", style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
