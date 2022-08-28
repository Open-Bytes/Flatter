class CartItem {
  CartItem(
      {required this.indexNo,
      required this.id,
      required this.name,
      this.amount = 0.0,
      required this.size,
      required this.color,
      required this.imageUrl,
      required this.dateTime,
      required this.category,
      required this.gender});

  final int id;
  final String name;
  final double? amount;
  final List<String> imageUrl;
  final String size;
  final String color;
  final DateTime dateTime;
  final String category;
  final int indexNo;
  final String gender;
}

CartItem cartItem = CartItem(
    id: DateTime.now().microsecondsSinceEpoch,
    name: "Red Dress",
    amount: 100.0,
    imageUrl: ['assets/demoImages/dressKids/red_dress.jpg'],
    dateTime: DateTime.now(),
    indexNo: 0,
    category: "Dress",
    gender: "Kid",
    size: 'X',
    color: 'White');

List<CartItem> cartItems = [
  cartItem,
  cartItem,
  cartItem,
  cartItem,
  cartItem,
  cartItem,
  cartItem,
  cartItem,
  cartItem
];
