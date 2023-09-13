import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hub_test/features/profile/model/user_model.dart';
import 'package:hub_test/features/profile/view/widgets/text_field_widget.dart';

class ProfileController extends GetxController {
  List<TextEditingController> textCtrlList = [];

  final Map<User, String> fieldDescriptor = {
    User.phone: 'Phone',
    User.email: 'Email',
    User.name: 'Name',
    // User.cvr:'CVR',
    User.street: 'Street',
    User.houseNr: 'House number',
    User.city: 'City',
    User.zip: 'Zip',
    User.instrs: 'Additional delivery instructions (optional)',
  };

  void updateUserState() {
    // TODO: Please Implement

    // Create a model from user inputs
    UserModel user = UserModel(
      phone: textCtrlList[0].text,
      email: textCtrlList[1].text,
      name: textCtrlList[2].text,
      street: textCtrlList[3].text,
      houseNumber: textCtrlList[4].text,
      city: textCtrlList[5].text,
      zip: textCtrlList[6].text,
      instrs: textCtrlList[7].text,
    );

    log(user.toString());

    // Save this to shared prefs, or other db, etc?
  }

  List<Widget> getInputFields() {
    textCtrlList.clear(); // Reset if hot reloading
    List<Widget> textFields = User.values.map((idx) {
      if (idx.index <= fieldDescriptor.length && idx != User.address) {
        TextEditingController ctrl = TextEditingController();
        textCtrlList.add(ctrl);
        return TextFieldWidget(
          fieldDescriptor: fieldDescriptor[idx] ?? '',
          hint: fieldDescriptor[idx].toString(),
          textCtrl: ctrl,
        );
      } else {
        return const SizedBox();
      }
    }).toList();

    return textFields;
  }
}
