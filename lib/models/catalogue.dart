class CatalogueModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 14 Pro",
        desc: "Apple iPhone 14th Gen",
        price: 999,
        color: "#3305a",
        image:
            "https://www.citypng.com/public/uploads/preview/iphone-14-pro-and-max-deep-purple-png-11662587434zacaxkb4sd.png"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
