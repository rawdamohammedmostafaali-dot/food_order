import 'package:flutter/material.dart';

class HomeScreenFoodOrder extends StatelessWidget {
  const HomeScreenFoodOrder({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> itemImages = [
      "assets/images/Group 33655.png",
      "assets/images/Group 33654.png",
      "assets/images/Group 33652.png",
      "assets/images/Group 33653.png",
    ];
    List<Color> itemColors = [
      Colors.white,
      Colors.white,
      Colors.greenAccent,
      Colors.white,
    ];
    List<String> mealImages = [
      "assets/images/borger1.png",
      "assets/images/burger2.jpeg",
      "assets/images/burger3.png",
      "assets/images/burger4.jpg",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                          AssetImage("assets/images/image.jpeg"),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your Location", style: TextStyle(fontSize: 14)),
                            Text("Savar, Dhaka", style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications_none, size: 30),
                      onPressed: () {},
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search for food...",
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    filled: true,
                    fillColor: const Color(0xff4A43EC),
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                  ),
                ),

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) {
                    return Container(
                      width: (MediaQuery.of(context).size.width - 60) / 4,
                      height: 100,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: itemColors[index],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(itemImages[index], fit: BoxFit.contain),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Meals",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: mealImages.map((imgPath) {
                      return Container(
                        margin: const EdgeInsets.only(right: 12),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            imgPath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
