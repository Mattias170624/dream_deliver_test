import 'package:get/get.dart';
import 'package:hub_test/routes/routes.dart';

class BottomNavController extends GetxController {
  RxInt currentPage = 0.obs;

  void handlePageSwitch({required int targetPage}) {
    currentPage.value = targetPage;

    switch (targetPage) {
      case 0:
        Get.offAllNamed(Routes.restaurants);
        break;
      case 1:
        Get.offAllNamed(Routes.profile);
        break;
      default:
        break;
    }
  }
}
