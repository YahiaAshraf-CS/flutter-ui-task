import 'package:flutter/material.dart';
class FavoriteItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const FavoriteItemWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontFamily: "Gilroy-bold",
                            fontSize: 16,
                            color: Color(0xff181725),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 14,
                            color: Color(0xff7C7C7C),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            fontFamily: "Gilroy-bold",
                            fontSize: 16,
                            color: Color(0xff181725),
                            fontWeight: FontWeight.bold,
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
              ),
            ],
          ),
        ),
        const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
      ],
    );
  }
}
