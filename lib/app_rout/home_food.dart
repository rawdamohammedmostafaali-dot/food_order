import 'package:flutter/material.dart';
import 'package:food_order/feature/home/presentation/ui/home_screen_food_order.dart';

class HomeFood extends StatelessWidget {
  const HomeFood({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenFoodOrder(),
    );
  }
}
