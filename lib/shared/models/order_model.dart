class OrderModel {
  final String restaurantName;
  List<String> cartItems = List.empty(growable: true);

  OrderModel({
    this.restaurantName = '',
  });
}
