import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hub_test/shared/controllers/bottom_nav_controller.dart';

class BottomNavBar extends GetView<BottomNavController> {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.utensils,
              size: 20,
              color: Colors.green,
            ),
            label: 'Restaurants',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.userCircle,
              size: 20,
              color: Colors.green,
            ),
            label: 'Profile',
          ),
        ],
        fixedColor: Colors.red,
        currentIndex: controller.currentPage.value,
        onTap: (int idx) {
          controller.handlePageSwitch(targetPage: idx);
        },
      ),
    );
  }
}
