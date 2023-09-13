import 'package:get/get.dart';
import 'package:hub_test/features/restaurants/controller/restaurant_controller.dart';
import 'package:hub_test/features/restaurants/view/widgets/build_restaurant_bar.dart';
import 'package:hub_test/shared/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class AllRestaurantsScreen extends GetView<RestaurantController> {
  const AllRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Restaurants"),
      ),
      body: const Column(
        children: [
          SizedBox(height: 10),
          BuildRestaurantBar("Restaurant 1"),
          SizedBox(height: 10),
          BuildRestaurantBar("Restaurant 2"),
          SizedBox(height: 10),
          BuildRestaurantBar("Restaurant 3"),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
