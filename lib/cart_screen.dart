import 'package:flutter/material.dart';
import 'package:task1_flutter/widget/check_out_bottom_sheet.dart';
import 'package:task1_flutter/widget/check_out_button_widdget.dart';
import 'package:task1_flutter/widget/my_cart_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "My Cart",
            style: TextStyle(
              color: Color(0xff181725),
              fontSize: 20,
              fontWeight: .w400,

              fontFamily: "Gilroy-bold",
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CartItemCard(
                imagePath: "assets/images/pepper.png",
                title: "Pepper",
                subtitle: "1kg",
                price: "\$200",
              ),
              CartItemCard(
                imagePath: "assets/images/pepper.png",
                title: "Pepper",
                subtitle: "1kg",
                price: "\$200",
              ),
              CartItemCard(
                imagePath: "assets/images/pepper.png",
                title: "Pepper",
                subtitle: "1kg",
                price: "\$200",
              ),
              CartItemCard(
                imagePath: "assets/images/pepper.png",
                title: "Pepper",
                subtitle: "1kg",
                price: "\$200",
              ),
              CartItemCard(
                imagePath: "assets/images/pepper.png",
                title: "Pepper",
                subtitle: "1kg",
                price: "\$200",
              ),
             
              CheckoutButton(price: "\$200",
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    builder: (context) {
                      return const CheckoutBottomSheet();
                    },
                  );
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
