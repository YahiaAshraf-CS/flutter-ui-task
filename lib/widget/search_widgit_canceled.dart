import 'package:flutter/material.dart';

class SearchWidgitCanceled extends StatelessWidget {
  const SearchWidgitCanceled({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 52.56840133666992,
      padding: EdgeInsets.all(14.5),
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
              color: Color(0xff181B19),
              fontWeight: FontWeight(600),
              fontSize: 17,
              fontFamily: "Gilroy",
            ),
          ),
          Spacer(flex: 30),
          
          
              Icon(Icons.cancel, color: Color(0xffC5C5C5)),
          
        ],
      ),
    );
  }
}
