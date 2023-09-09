import 'package:hub_test/checkout/cart.dart';
import 'package:hub_test/shared/bottom_nav.dart';
import 'package:flutter/material.dart';

class AllRestaurantsScreen extends StatelessWidget {
  const AllRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Restaurants"),
      ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            buildRestaurantBar("Restaurant 1", context),
            const SizedBox(height: 10),
            buildRestaurantBar("Restaurant 2", context),
            const SizedBox(height: 10),
            buildRestaurantBar("Restaurant 3", context),
            const SizedBox(height: 10),
          ],
        ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class SingleRestaurantScreen extends StatelessWidget {
  final String restaurant;
  const SingleRestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      CartScreen(restaurant: restaurant),
                ),
              );
            },
          )
        ],
      ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            buildItemBar("Item 1", context),
            const SizedBox(height: 10),
            buildItemBar("Item 2", context),
            const SizedBox(height: 10),
            buildItemBar("Item 3", context),
            const SizedBox(height: 10),
          ],
        ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

Widget buildRestaurantBar(String text, context) {
    return Container(
      height: 30,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      SingleRestaurantScreen(restaurant: text),
                ),
              );
            },
            child: const Text("Button"),
          ),
        ],
      ),
    );
  }

Widget buildItemBar(String text, context) {
    return Container(
      height: 30,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: Add item to cart;
            },
            child: const Text("Button"),
          ),
        ],
      ),
    );
  }
