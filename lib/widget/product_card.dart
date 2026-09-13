import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.cardColor, required this.imagePath, required this.title, required this.borderColor});
  final Color borderColor;
  final Color cardColor;
  final String imagePath;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174.5,
      height: 189.10609436035156,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight(400),
              fontSize: 16,
              color: Color(0xff181725),
              fontFamily: "Gilroy-bold",
            ),
          ),
        ],
      ),
    );
  }
}
