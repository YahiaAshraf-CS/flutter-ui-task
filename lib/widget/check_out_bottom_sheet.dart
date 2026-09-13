import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:task1_flutter/order_accepted_screen.dart';


class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  Widget _buildRow(String title, String trailingText, Widget? trailingWidget) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C),
              fontFamily: "Gilroy-bold",
            ),
          ),
          Row(
            children: [
              if (trailingWidget != null) trailingWidget,
              if (trailingText.isNotEmpty)
                Text(
                  trailingText,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                    fontFamily: "Gilroy-bold",
                  ),
                ),
              const SizedBox(width: 15),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff181725),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                  fontFamily: "Gilroy-bold",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  size: 24,
                  color: Color(0xff181725),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
          _buildRow("Delivery", "Select Method", null),
          const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
          _buildRow(
            "Pament",
            "",
             Image.asset("assets/images/card.png"),
          ),
          const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
          _buildRow("Promo Code", "Pick discount", null),
          const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
          _buildRow("Total Cost", "\$13.97", null),
          const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: "By placing an order you agree to our\n",
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xff7C7C7C),
                fontFamily: "Gilroy",
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: "Terms",
                  style: const TextStyle(
                    color: Color(0xff181725),
                    fontFamily: "Gilroy-bold",
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                const TextSpan(text: " And "),
                TextSpan(
                  text: "Conditions",
                  style: const TextStyle(
                    color: Color(0xff181725),
                    fontFamily: "Gilroy-bold",
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          CustomButton(
            title: "Place Order",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AcceptedScreen()),
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
