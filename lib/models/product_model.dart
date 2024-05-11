class Product {
  final String name;
  final String color;
  final String size;
  final String image;
  final int price;
  int itemCount;

  Product(
      {required this.image,
      required this.itemCount,
      required this.color,
      required this.size,
      required this.price,
      required this.name});
  void add() {
    itemCount++;
  }

  void less() {
    if (itemCount > 0) {
      itemCount--;
    }
  }
}
