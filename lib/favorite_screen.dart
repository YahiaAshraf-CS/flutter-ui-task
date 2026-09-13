import 'package:flutter/material.dart';
import 'package:task1_flutter/widget/favorite_wiget.dart' show FavoriteItemWidget;



class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text(
          "Favorite",
          style: TextStyle(
            fontFamily: "Gilroy-bold",
            fontSize: 20,
            color: Color(0xff181725),
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: const Color(0xffE2E2E2), height: 1),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                FavoriteItemWidget(
                  imagePath: "assets/images/coca.png",
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                ),
                FavoriteItemWidget(
                  imagePath: "assets/images/coca.png",
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                ),
                FavoriteItemWidget(
                  imagePath: "assets/images/coca.png",
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                ),
                FavoriteItemWidget(
                  imagePath: "assets/images/coca.png",
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                ),
                FavoriteItemWidget(
                  imagePath: "assets/images/coca.png",
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                ),
                FavoriteItemWidget(
                  imagePath: "assets/images/coca.png",
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                ),
                FavoriteItemWidget(
                  imagePath: "assets/images/coca.png",
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                ),
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff53b175),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Text(
                  "Add All To Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy-bold",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
