import 'package:get/get.dart';
import 'package:hub_test/routes/routes.dart';
import 'package:hub_test/shared/models/order_model.dart';

class SingleRestaurantController extends GetxController {
  late OrderModel order;
  String restaurantName = '';

  @override
  void onInit() {
    order = Get.arguments;
    super.onInit();
  }

  void setRestaurantName({required String name}) {
    restaurantName = name;
  }

  void handleAddCartItem({required String itemType}) {
    if (order.cartItems.contains(itemType)) return;
    order.cartItems.add(itemType);
  }

  void handleCartPressed() {
    Get.toNamed(Routes.cartScreen, arguments: order);
  }
}
