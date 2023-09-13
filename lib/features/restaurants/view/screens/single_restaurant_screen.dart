import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/restaurants/controller/single_restaurant_controller.dart';
import 'package:hub_test/features/restaurants/view/widgets/build_item_bar.dart';
import 'package:hub_test/shared/widgets/bottom_nav.dart';

class SingleRestaurantScreen extends GetView<SingleRestaurantController> {
  const SingleRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(controller.order.restaurantName),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            onPressed: () {
              controller.handleCartPressed();
            },
          )
        ],
      ),
      body: const Column(
        children: [
          SizedBox(height: 10),
          BuildItemBar("Item 1"),
          SizedBox(height: 10),
          BuildItemBar("Item 2"),
          SizedBox(height: 10),
          BuildItemBar("Item 3"),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
