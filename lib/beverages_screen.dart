import 'package:flutter/material.dart';
import 'package:task1_flutter/filters_screen.dart';
import 'package:task1_flutter/widget/item_card_widget.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,

            color: Color(0xff181725),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text("Beverages"),
        titleTextStyle: TextStyle(
          color: Color(0xff181725),
          fontWeight: .w400,
          fontSize: 20,
          fontFamily: "Gilroy-bold",
        ),

        actions: [
          
          IconButton(
            onHover: (value) => print("tune"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FiltersScreen(),
              ),
            ),
            icon: Image.asset("assets/images/tunes.png", width: 20, height: 20),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 0.75,
          ),
          itemCount: 8,

          itemBuilder: (context, index) {
            return ItemCard(
              imagePath: "assets/images/pepsi.png",
              title: "coca cola",
              subtitle: "355ml, Price",
              price: "50",
            );
          },
        ),
      ),
    );
  }
}
