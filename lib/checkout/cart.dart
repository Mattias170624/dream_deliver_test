import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final String restaurant;
  const CartScreen({super.key, required this.restaurant, String? orderComment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          restaurant,
          style: const TextStyle(
            overflow: TextOverflow.fade,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 400),
          OrderButton(restaurant: restaurant),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  final String restaurant;
  const OrderButton({super.key, required this.restaurant});

  String? _validate() {
    if (!_validateUser()) {
      return "Please fill in all user info under Profile";
    }
    if (!_noItemsInCart()) {
      return "No items in cart";
    }
    return null;
  }

  bool _validateUser() {
    // TODO: Please implement
    if (true) {
      return true;
    } else {
      return false;
    }
  }

  bool _noItemsInCart() {
    // TODO: Please implement
    if (true) {
      return true;
    } else {
     return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 40,
        width: 400,
        child: ElevatedButton(
          child: const Text('Place order'),
          onPressed: () {
            String? error = _validate();
            if (error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    error,
                    style: const TextStyle(
                      overflow: TextOverflow.fade,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  backgroundColor: Colors.green,
                  duration: const Duration(seconds: 1),
                ),
              );
              return;
            }
            Navigator.of(context).pushNamed('/current_order');
          },
        ),
      ),
    );
  }
}
