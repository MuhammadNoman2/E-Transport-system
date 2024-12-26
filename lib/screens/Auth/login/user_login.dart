import 'package:e_transport/screens/Auth/signup/user_signup.dart';
import 'package:e_transport/screens/dashboards/User/user_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../controllers/auth_controller.dart';
import '../../../widgtes/Auth_widgets/custom_buttom.dart';
import '../../../widgtes/Auth_widgets/custom_textfield.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor.withOpacity(0.8),
        title: const Text("User Login"),
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
                  "Welcome Back",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextFormField(
                    controller: authController.emailController,
                    hintText: "Enter your email",
                  ),

                  CustomTextFormField(
                    controller: authController.passwordController,
                    hintText: "Enter your password",
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GestureDetector(
                      onTap: (){},
                      child: Text("Forgot password", style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Login",
                onPressed: ()
                  {
                     Get.to(()=> UserDashboard());
                  }
              ),
              const SizedBox(height: 10),
              Text("OR"),
              const SizedBox(height: 10),
              CustomButton(
                text: "Login with Google",
                onPressed: authController.GoogleLogin,
              ),
              const SizedBox(height: 10),
              Wrap(
                children: [
                  Text(
                    "Don't have an Account, ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(()=> UserSignup());
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
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