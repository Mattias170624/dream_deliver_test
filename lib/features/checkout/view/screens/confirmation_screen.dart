import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/checkout/controller/confirmation_controller.dart';

class ConfirmationScreen extends GetView<ConfirmationController> {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active order'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(controller.order.restaurantName),
            Text(controller.order.cartItems.toString()),
          ],
        ),
      ),
    );
  }
}
