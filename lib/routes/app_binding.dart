import 'package:get/get.dart';
import 'package:hub_test/features/checkout/controller/cart_controller.dart';
import 'package:hub_test/features/checkout/controller/confirmation_controller.dart';
import 'package:hub_test/features/profile/controller/profile_controller.dart';
import 'package:hub_test/features/restaurants/controller/restaurant_controller.dart';
import 'package:hub_test/features/restaurants/controller/single_restaurant_controller.dart';
import 'package:hub_test/shared/controllers/bottom_nav_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<BottomNavController>(BottomNavController());

    Get.lazyPut(() => RestaurantController(), fenix: true);
    Get.lazyPut(() => SingleRestaurantController(), fenix: true);
    Get.lazyPut(() => CartController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => ConfirmationController(), fenix: true);
  }
}
