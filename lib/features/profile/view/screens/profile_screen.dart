import 'package:get/get.dart';
import 'package:hub_test/features/profile/controller/profile_controller.dart';
import 'package:hub_test/shared/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 15),
          Flexible(
            fit: FlexFit.tight,
            child: ListView(
              primary: false,
              padding: const EdgeInsets.all(10.0),
              children: controller.getInputFields(),
            ),
          ),
          Align(
            child: SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                child: const Text(
                  'Update user info',
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  controller.updateUserState();
                },
              ),
            ),
          ),
          const SizedBox(height: 60),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
