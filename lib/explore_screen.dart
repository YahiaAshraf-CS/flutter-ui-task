import 'package:flutter/material.dart';
import 'package:task1_flutter/beverages_screen.dart';
import 'package:task1_flutter/filters_screen.dart';
import 'package:task1_flutter/home_screen.dart';
import 'package:task1_flutter/widget/product_card.dart';
import 'package:task1_flutter/widget/search_widgit.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  "Find Products",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xff181725),
                    fontFamily: "Gilroy-bold",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
               
                 SearchWidgit(text: "Search Product"),
              
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BeveragesScreen(),
                      ),
                    );
                  },
                  child: const ProductCard(
                    cardColor: Color(0xff53B175B2),
                    imagePath: "assets/images/fruits.png",
                    title: "Frash Fruits & Vegetable",
                    borderColor: Color(0xff53B175B2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
