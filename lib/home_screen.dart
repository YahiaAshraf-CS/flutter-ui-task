import 'package:flutter/material.dart';
import 'package:task1_flutter/widget/card_item_widget.dart';
import 'package:task1_flutter/widget/item_card_widget.dart';
import 'package:task1_flutter/widget/nav_bar_widgit.dart';
import 'package:task1_flutter/widget/search_widgit.dart';
import 'package:task1_flutter/widget/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //make the page scroll

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        body: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset("assets/images/Group.png"),
              SizedBox(height: 10),

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
              SizedBox(height: 20),
              SearchWidgit(text: "Search for products..."),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/Banner.png",
                width: 368.20263671875,
                height: 114.99,
              ),
              SizedBox(height: 20),
              TextWidget(text: "Exclusive Offer"),
              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemCard(
                      imagePath: "assets/images/apple.png",
                      title: "Red Apple",
                      subtitle: "1KG, Priceg",
                      price: "4.99",
                    ),
                    SizedBox(width: 20),
                    ItemCard(
                      imagePath: "assets/images/ban.png",
                      title: "Organic Bananas",
                      subtitle: "7pcs, Priceg",
                      price: "4,99",
                    ),
                    SizedBox(width: 20),
                    ItemCard(
                      imagePath: "assets/images/ban.png",
                      title: "Organic Bananas",
                      subtitle: "7pcs, Priceg",
                      price: "4,99",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextWidget(text: "Best Selling"),
              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemCard(
                      imagePath: "assets/images/apple.png",
                      title: "Red Apple",
                      subtitle: "1KG, Priceg",
                      price: "4.99",
                    ),
                    SizedBox(width: 20),
                    ItemCard(
                      imagePath: "assets/images/ban.png",
                      title: "Organic Bananas",
                      subtitle: "7pcs, Priceg",
                      price: "4,99",
                    ),
                    SizedBox(width: 20),
                    ItemCard(
                      imagePath: "assets/images/apple.png",
                      title: "Organic Bananas",
                      subtitle: "7pcs, Priceg",
                      price: "4,99",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              TextWidget(text: "Groceries"),
              
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) => Row(
                    children: [
                      
                      CardItem(myColor: Color(0x0ff8a44c), text: "Pulses", imagePath: "assets/images/pulses.png"),
                     SizedBox(width: 24),
                      CardItem(myColor: Color(0xffF2F3F2), text: "Pulses", imagePath: "assets/images/pulses.png"),
                     SizedBox(width: 24),
                      
                      CardItem(myColor: Color(0xff22F3F2), text: "Pulses", imagePath: "assets/images/pulses.png"),
                               ],
                  ),
                  itemCount: 1,
                ),
              ),
            
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemCard(
                      imagePath: "assets/images/apple.png",
                      title: "Red Apple",
                      subtitle: "1KG, Priceg",
                      price: "4.99",
                    ),
                    SizedBox(width: 20),
                    ItemCard(
                      imagePath: "assets/images/ban.png",
                      title: "Organic Bananas",
                      subtitle: "7pcs, Priceg",
                      price: "4,99",
                    ),
                    SizedBox(width: 20),
                    ItemCard(
                      imagePath: "assets/images/apple.png",
                      title: "Organic Bananas",
                      subtitle: "7pcs, Priceg",
                      price: "4,99",
                    ),
                     
                  ],
                ),
              ),

 
            
            ],
          ),
        ),
        
      ),
      
    );
    
  }
}
