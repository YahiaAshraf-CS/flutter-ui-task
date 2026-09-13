import 'package:flutter/material.dart';
import 'package:task1_flutter/widget/account_list_widget.dart' show AccountListItem;



class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Afsar Hossen",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff181725),
                                  fontFamily: "Gilroy-bold",
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.edit,
                                color: Color(0xff53b175),
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Imshuvo97@gmail.com",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff7C7C7C),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Gilroy",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Color(0xffE2E2E2), thickness: 1, height: 1),
              const AccountListItem(
                leadingIcon: Icons.shopping_bag_outlined,
                title: "Orders",
              ),
              const AccountListItem(
                leadingIcon: Icons.badge_outlined,
                title: "My Details",
              ),
              const AccountListItem(
                leadingIcon: Icons.location_on_outlined,
                title: "Delivery Address",
              ),
              const AccountListItem(
                leadingIcon: Icons.payment,
                title: "Payment Methods",
              ),
              const AccountListItem(
                leadingIcon: Icons.local_activity_outlined,
                title: "Promo Cord",
              ),
              const AccountListItem(
                leadingIcon: Icons.notifications_none,
                title: "Notifecations",
              ),
              const AccountListItem(
                leadingIcon: Icons.help_outline,
                title: "Help",
              ),
              const AccountListItem(
                leadingIcon: Icons.info_outline,
                title: "About",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: double.infinity,
                    height: 65,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        Positioned(
                          left: 20,
                          child: Icon(Icons.logout, color: Color(0xff53b175)),
                        ),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            color: Color(0xff53b175),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy-bold",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
