import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/profile/controller/profile_controller.dart';

class TextFieldWidget extends GetView<ProfileController> {
  final TextEditingController textCtrl;
  final String fieldDescriptor;
  final String hint;

  const TextFieldWidget({
    required this.fieldDescriptor,
    required this.textCtrl,
    required this.hint,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return SizedBox textFieldWidget(String fieldDescriptor, String hint, User idx) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 50,
              child: TextField(
                controller: textCtrl,
                decoration: InputDecoration(
                  labelText: fieldDescriptor,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: const TextStyle(
                    color: Colors.green,
                  ),
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
