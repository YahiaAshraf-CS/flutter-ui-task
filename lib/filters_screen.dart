import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  Widget _buildStaticCheckbox(String title, bool isChecked) {
    return Row(
      children: [
        Theme(
          data: ThemeData(unselectedWidgetColor: const Color(0xffC2C2C2)),
          child: Checkbox(
            value: isChecked,
            onChanged: (val) {},
            activeColor: const Color(0xff53b175),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isChecked ? FontWeight.w600 : FontWeight.w400,
            color: isChecked
                ? const Color(0xff53b175)
                : const Color(0xff181725),
            fontFamily: isChecked ? "Gilroy-bold" : "Gilroy",
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black, size: 28),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Filters",
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Gilroy-bold",
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725),
                        fontFamily: "Gilroy-bold",
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildStaticCheckbox("Eggs", true),
                    _buildStaticCheckbox("Noodles & Pasta", false),
                    _buildStaticCheckbox("Chips & Crisps", false),
                    _buildStaticCheckbox("Fast Food", false),
                    const SizedBox(height: 32),
                    const Text(
                      "Brand",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725),
                        fontFamily: "Gilroy-bold",
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildStaticCheckbox("Individual Callection", false),
                    _buildStaticCheckbox("Cocola", true),
                    _buildStaticCheckbox("Ifad", false),
                    _buildStaticCheckbox("Kazi Farmas", false),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
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
                    "Apply Filter",
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
      ),
    );
  }
}
