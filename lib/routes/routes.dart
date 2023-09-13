// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:hub_test/features/checkout/view/screens/cart_screen.dart';
import 'package:hub_test/features/checkout/view/screens/confirmation_screen.dart';
import 'package:hub_test/features/home/home.dart';
import 'package:hub_test/features/restaurants/view/screens/restaurants_screen.dart';
import 'package:hub_test/features/profile/view/screens/profile_screen.dart';
import 'package:hub_test/features/restaurants/view/screens/single_restaurant_screen.dart';

class Routes {
  static String homeScreen = "/";
  static String restaurants = "/restaurants";
  static String singleRestaurants = "/single_restaurants";
  static String profile = "/profile";
  static String cartScreen = "/cart_screen";
  static String confirmationScreen = "/confirmation_screen";
}

final pages = [
  GetPage(
    name: Routes.homeScreen,
    page: () => HomeScreen(),
  ),
  GetPage(
    name: Routes.restaurants,
    page: () => AllRestaurantsScreen(),
  ),
  GetPage(
    name: Routes.singleRestaurants,
    page: () => SingleRestaurantScreen(),
  ),
  GetPage(
    name: Routes.profile,
    page: () => ProfileScreen(),
  ),
  GetPage(
    name: Routes.cartScreen,
    page: () => CartScreen(),
  ),
  GetPage(
    name: Routes.confirmationScreen,
    page: () => ConfirmationScreen(),
  ),
];
