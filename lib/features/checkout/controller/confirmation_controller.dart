import 'package:get/get.dart';
import 'package:hub_test/shared/models/order_model.dart';

class ConfirmationController extends GetxController {
  late OrderModel order;

  @override
  void onInit() {
    order = Get.arguments;
    super.onInit();
  }
}
