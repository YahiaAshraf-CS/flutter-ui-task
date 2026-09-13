import 'package:flutter/material.dart';
import 'package:task1_flutter/widget/item_card_widget.dart';
import 'package:task1_flutter/widget/nav_bar_widgit.dart';
// import 'package:task1_flutter/widget/search_widgit.dart';
import 'package:task1_flutter/widget/search_widgit_canceled.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: SearchWidgitCanceled(text: "Egg")),
                  const SizedBox(width: 30),
                  Image.asset("assets/images/tunes.png", width: 20, height: 20),
                ],
                
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      imagePath: "assets/images/eggs.png",
                      title: "Egg Chicken Red",
                      subtitle: "4pcs, Price",
                      price: "1,99",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 2,
        onTap: (index) { 
          // setState(() {
          //   _currentIndex = index;
          // });
        },
      ),
    );
  }
}
