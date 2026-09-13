import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.myColor, required this.text, required this.imagePath});
  final Color myColor;
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.1865234375,
      height: 105,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image.asset(imagePath),
          SizedBox(width: 6),

          Text(
            text,
            style: TextStyle(
              color: Color(0xff3E423F),
              fontWeight: FontWeight(600),
              fontSize: 20,
              fontFamily: "Gilroy",
            ),
          ),
        ],
      ),
    );
  }
}
