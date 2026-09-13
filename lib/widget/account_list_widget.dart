import 'package:flutter/material.dart';

class AccountListItem extends StatelessWidget {
  final IconData leadingIcon;
  final String title;

  const AccountListItem({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Icon(leadingIcon, size: 24, color: const Color(0xff181725)),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                      fontFamily: "Gilroy-bold",
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff181725),
                ),
              ],
            ),
          ),
        ),
        const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
      ],
    );
  }
}
