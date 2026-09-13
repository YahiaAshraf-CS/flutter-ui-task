import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final String price;
  final VoidCallback onTap;

  const CheckoutButton({super.key, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: const Color(0xff53b175),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Text(
              "Go to Checkout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "Gilroy-bold",
              ),
            ),
            Positioned(
              right: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy-bold",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
