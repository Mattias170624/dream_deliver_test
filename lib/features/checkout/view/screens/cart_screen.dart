import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/checkout/controller/cart_controller.dart';
import 'package:hub_test/features/checkout/view/widgets/order_button.dart';

class CartScreen extends GetView<CartController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.order.restaurantName,
          style: const TextStyle(
            overflow: TextOverflow.fade,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 400),
          Text(controller.order.cartItems.toString()),
          OrderButton(restaurant: controller.order.restaurantName),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
