import 'package:flutter/material.dart';
class Item {
  final int id;
  final int price;
  final String name;
  final String description;
  final String image;

  Item(required this.id, required this.name, required this.price, required this.description, required this.image)

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
class CatalogModel {
  static List<Item> itemList = [
    {
      id: 0,
      name: "iPhone 12 Pro Max",
      price: 1099,
      description: "Apple iPhone 12 Pro Max 128GB Gris Espacial",
      image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-max-graphite-hero?wid=940&hei=1112&fmt=png-alpha&.v=1604021660000"
    },
    {
      id: 1,
      name: "iPhone 12 Pro",
      price: 999,
      description: "Apple iPhone 12 Pro 128GB Gris Espacial",
      image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-graphite-hero?wid=940&hei=1112&fmt=png-alpha&.v=1604021658000"

    },
    {
      id: 2,
      name: "iPhone 12",
      price: 799,
      description: "Apple Iphone 12 128GB Gris Espacial",
      image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-black-select-2020?wid=940&hei=1112&fmt=png-alpha&.v=1604343704000"
    }
  ];

  Item getById(int id) => itemList.firstWhere((element) => element.id == id, orElse: null);

  Item getByPosition(int position) {
    return getById(position);
  }
}


