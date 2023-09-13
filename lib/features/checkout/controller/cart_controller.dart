import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/shared/models/order_model.dart';
import 'package:hub_test/routes/routes.dart';

class CartController extends GetxController {
  late OrderModel order;

  @override
  void onInit() {
    order = Get.arguments;
    super.onInit();
  }

  bool validateUser({required BuildContext buildContext}) {
    // TODO: Please implement

    if (true) {
      return true;
    } else {
      Get.showSnackbar(
        const GetSnackBar(
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
          messageText: Text(
            'Please fill in all user info under Profile',
            style: TextStyle(overflow: TextOverflow.fade, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }

  bool noItemsInCart({required BuildContext buildContext}) {
    if (order.cartItems.isEmpty) {
      Get.showSnackbar(
        const GetSnackBar(
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
          messageText: Text(
            'No items in cart',
            style: TextStyle(overflow: TextOverflow.fade, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      );

      return false;
    } else {
      return true;
    }
  }

  void handlePlaceOrder({required BuildContext buildContext}) {
    if (!validateUser(buildContext: buildContext) || !noItemsInCart(buildContext: buildContext)) {
      return;
    }

    Get.toNamed(Routes.confirmationScreen, arguments: order);
  }
}
