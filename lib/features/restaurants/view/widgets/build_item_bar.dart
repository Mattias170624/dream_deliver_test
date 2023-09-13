import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/restaurants/controller/single_restaurant_controller.dart';

class BuildItemBar extends GetView<SingleRestaurantController> {
  final String restaurantName;
  const BuildItemBar(this.restaurantName, {super.key});

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
              controller.handleAddCartItem(itemType: restaurantName);
            },
            child: const Text("Button"),
          ),
        ],
      ),
    );
  }
}
