import 'package:hub_test/checkout/confirmation_screen.dart';
import 'package:hub_test/home/home.dart';
import 'package:hub_test/restaurants/restaurants.dart';
import 'package:hub_test/profile/profile.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/restaurants': (context) => const AllRestaurantsScreen(),
  '/profile': (context) => ProfileScreen(),
  '/current_order': (context) => const ActiveOrderScreen(),
};
