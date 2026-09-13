import 'package:flutter/material.dart';
import 'package:task1_flutter/home_screen.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff53b175),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: "Gilroy-bold",
          ),
        ),
      ),
    );
  }
}

class AcceptedScreen extends StatelessWidget {
  const AcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Spacer(flex: 1),
                Image.asset(
                  "assets/images/correct.png",
                  width: 260,
                  
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                const Text(
                  "Your Order has been\naccepted",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Your items has been placcd and is on\nit's way to being processed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff7c7c7c),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(flex: 2),
                CustomButton(title: "Track Order", onTap: () {}),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Text(
                    "Back to home",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
