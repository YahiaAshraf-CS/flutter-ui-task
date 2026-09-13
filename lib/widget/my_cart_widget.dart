import 'package:flutter/material.dart';

class CartItemCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const CartItemCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
               widget.imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff181725),
                            fontFamily: "Gilroy-bold",
                          ),
                        ),
                        const Icon(
                          Icons.close,
                          color: Color(0xffB3B3B3),
                          size: 24,
                        ),
                      ],
                    ),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff7C7C7C),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Gilroy",
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Color(0xffB3B3B3),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Text(
                              quantity.toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181725),
                                fontFamily: "Gilroy-bold",
                              ),
                            ),
                            const SizedBox(width: 15),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xff53b175),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.price,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff181725),
                            fontFamily: "Gilroy-bold",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
      ],
    );
  }
}
