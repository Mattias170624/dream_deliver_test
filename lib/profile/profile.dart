import 'package:hub_test/shared/bottom_nav.dart';
import 'package:flutter/material.dart';

enum User {
  phone,
  email,
  name,
  // cvr,
  street,
  houseNr,
  city,
  zip,
  instrs,
  address,
}

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  
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

  @override
  Widget build(BuildContext context) {
    int maxEnum = fieldDescriptor.length;
    List<Widget> textFields = User.values.map((idx) {
      if (idx.index <= maxEnum && idx != User.address) {
        return TextFieldWidget(
          fieldDescriptor: fieldDescriptor[idx] ?? '',
          hint: fieldDescriptor[idx].toString()
        );
      } else {
        return const SizedBox();
      }
    }).toList();
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
          Flexible (
            fit: FlexFit.tight,
            child:  
            ListView(
              primary: false,
              padding: const EdgeInsets.all(10.0),
              children: [
                const SizedBox(height: 10),
                for (Widget item in textFields)
                  item, 
                  // const SizedBox(height: 10),
              ],
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
                  _updateUserState();
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
  
  void _updateUserState() {
    // TODO: Please Implement
  }
}

class TextFieldWidget extends StatelessWidget {
  final String fieldDescriptor;
  final String hint;

  const TextFieldWidget({
    super.key,
    required this.fieldDescriptor,
    required this.hint,
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
                onChanged: (String value) {
                  //TODO: Please Implement
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
