import 'package:e_transport/screens/Auth/signup/family_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../controllers/auth_controller.dart';
import '../../../widgtes/Auth_widgets/custom_buttom.dart';
import '../../../widgtes/Auth_widgets/custom_textfield.dart';

class FamilyLogin extends StatefulWidget {
  const FamilyLogin({super.key});

  @override
  State<FamilyLogin> createState() => _FamilyLoginState();
}

class _FamilyLoginState extends State<FamilyLogin> {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor.withOpacity(0.8),
        title: const Text("Family Login"),
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
                      bool isFamily = true;
                      authController.login(isFamily);
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
                      Get.to(()=> FamilySignup());
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
