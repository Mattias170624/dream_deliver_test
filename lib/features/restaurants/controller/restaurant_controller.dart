import 'package:get/get.dart';
import 'package:hub_test/routes/routes.dart';
import 'package:hub_test/shared/models/order_model.dart';

class RestaurantController extends GetxController {
  void handlePickRestaurant({required String name}) {
    // Create order model and pass it to next screen
    OrderModel order = OrderModel(restaurantName: name);
    Get.toNamed(Routes.singleRestaurants, arguments: order);
    //Get.to(() => const SingleRestaurantScreen(), arguments: order);
  }
}
