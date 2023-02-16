class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});
}

final products = [
  Item(
      id: "p01",
      name: "iPhone 14 Pro",
      desc: "Apple iPhone 14th Gen",
      price: 999,
      color: "#3305a",
      imageUrl: "url")
];
