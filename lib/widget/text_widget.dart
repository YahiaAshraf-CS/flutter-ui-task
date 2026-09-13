import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget ({super.key, required this.text});
  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 24,
            color: Color(0xff181725),
            fontFamily: "Gilroy",
          ),
        ),
        Spacer(),
        Text(
          "See All",
          
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 16,
            color: Color(0xff53B175),
            fontFamily: "Gilroy",
          ),
        ),
      ],
    );
  }
}
