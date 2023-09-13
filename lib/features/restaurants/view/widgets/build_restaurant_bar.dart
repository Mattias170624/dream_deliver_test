import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/restaurants/controller/restaurant_controller.dart';

class BuildRestaurantBar extends GetView<RestaurantController> {
  final String restaurantName;
  const BuildRestaurantBar(this.restaurantName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            restaurantName,
            style: const TextStyle(fontSize: 16),
          ),
          ElevatedButton(
            onPressed: () {
              controller.handlePickRestaurant(name: restaurantName);
            },
            child: const Text("Button"),
          ),
        ],
      ),
    );
  }
}
