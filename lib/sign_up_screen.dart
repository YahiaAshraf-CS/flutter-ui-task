import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:task1_flutter/app_section.dart' show MainScreen;
import 'package:task1_flutter/login_screen.dart' show LoginScreen;

import 'package:task1_flutter/order_accepted_screen.dart' show CustomButton;


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  "assets/images/carrot_logo.png",
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 80),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                  fontFamily: "Gilroy-bold",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Gilroy",
                ),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 16,
                    fontFamily: "Gilroy",
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 16,
                    fontFamily: "Gilroy",
                  ),
                  suffixIcon: Icon(Icons.check, color: Color(0xff53b175)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 16,
                    fontFamily: "Gilroy",
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Color(0xff7C7C7C),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "By continuing you agree to our ",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff7C7C7C),
                    fontFamily: "Gilroy",
                  ),
                  children: [
                    TextSpan(
                      text: "Terms of Service",
                      style: const TextStyle(color: Color(0xff53b175)),
                   
                    ),
                    const TextSpan(text: "\nand "),
                    TextSpan(
                      text: "Privacy Policy.",
                      style: const TextStyle(color: Color(0xff53b175)),
                    
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                title: "Sing Up",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                    (route) => false,
                  );
                },
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff181725),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gilroy-bold",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff53b175),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gilroy-bold",
                      ),
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
