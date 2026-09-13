import 'package:flutter/material.dart';

class SearchWidgit extends StatelessWidget {
  const SearchWidgit({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 51.56840133666992,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F2),

        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        spacing: 10,

        children: [
          Icon(Icons.search, color: Color(0xff181B19)),
          Text(
            text,
            textAlign: TextAlign.center,

            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontWeight: FontWeight(600),
              fontSize: 17,
              fontFamily: "Gilroy",
            ),
          ),
        ],
      ),
    );
  }
}
