import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("yehia ashraf"),

          titleTextStyle: (TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            decorationStyle: TextDecorationStyle.dashed,
            decorationColor: Colors.white,
            decorationThickness: 5,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(4, 4), blurRadius: 4),
            ],
          )),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            Icon(
              Icons.phone_android,
              color: Colors.white,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(width: 5, height: 10),
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(width: 5, height: 10),

            Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(width: 5, height: 10),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Positioned(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.orange,
                  ),
                ),
                Container(width: 150, height: 150, color: Colors.green),
                Positioned(
                  bottom: 50,
                  child: Container(
                    width: 100,
                    height: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "yehia ashraf",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 15,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(30),
                  child: Image.asset(
                    "assets/images/image.png",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ), // change the image border radius to 20 and add a shadow to the image
                ),
              ],
            ),
          ],
        ),
      );
  }
}