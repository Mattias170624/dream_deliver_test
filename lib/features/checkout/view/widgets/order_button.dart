import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/checkout/controller/cart_controller.dart';

class OrderButton extends GetView<CartController> {
  final String restaurant;
  const OrderButton({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 40,
        width: 400,
        child: ElevatedButton(
          child: const Text('Place order'),
          onPressed: () {
            controller.handlePlaceOrder(buildContext: context);
          },
        ),
      ),
    );
  }
}
