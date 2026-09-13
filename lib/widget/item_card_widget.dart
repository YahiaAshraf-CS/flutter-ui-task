import 'package:flutter/material.dart';
class ItemCard extends StatelessWidget {
  ItemCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });
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
            
            
            width: 150,
            height: 70,

            fit: BoxFit.contain,
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
