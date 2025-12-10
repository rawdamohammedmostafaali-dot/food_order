import 'package:flutter/material.dart';
import 'package:food_order/feature/home/presentation/ui/home_screen_food_order.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenFoodOrder(),
    );
  }
}
