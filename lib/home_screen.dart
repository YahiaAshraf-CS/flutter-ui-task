import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image.asset("assets/images/Group.png"),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Icon(Icons.location_on),

              Text(
                "Dhaka, Banassree",

                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 18,
                  color: Color(0xff4C4F4D),
                  fontFamily: "Gilroy",
                ),
              ),
            ],
          ),
          Container(
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
                  "Search for a product",

                  style: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontWeight: FontWeight(600),
                    fontSize: 18,
                    fontFamily: "Gilroy",
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/images/Banner.png",
            width: 368.20263671875,
            height: 114.99,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             
            children: [
              
              Text(
                "Exclusive Offer",
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ItemCard(
              imagePath: "assets/images/apple.png",
              title: "Red Apple",
              subtitle: "1KG, Priceg",
              price: "4.99",
            ), ItemCard(
              imagePath: "assets/images/ban.png",
              title:"Organic Bananas",
              subtitle: "7pcs, Priceg",
              price: "4,99",
            )],
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  ItemCard({super.key, required this.imagePath, required this.title, required this.subtitle, required this.price});
  String imagePath;
  String title;
  String subtitle;
  String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173.3249969482422,
      height: 248.50999450683594,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2E2E2)),
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            alignment: Alignment.center,
            width: 110,
            height: 65,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 33),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight(400),
              fontSize: 16,
              color: Color(0xff181725),
              fontFamily: "Gilroy",
            ),
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              fontWeight: FontWeight(400),
              fontSize: 14,

              color: Color(0xff7c7c7c),
              fontFamily: "Gilroy",
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ $price",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 16,
                  color: Color(0xff53B175),
                  fontFamily: "Gilroy",
                ),
              ),

              SizedBox(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xff53B175),
                  hoverColor: Colors.greenAccent,
                  // mini: true,
                  mouseCursor: SystemMouseCursors.click,
                  child: Icon(Icons.add, color: Colors.white, size: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
