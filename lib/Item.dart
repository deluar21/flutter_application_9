class Item {
  String itemName;
  String itemDesc;
  String itemImage;
  int itemPrice;

  Item({
    required this.itemName,
    required this.itemDesc,
    required this.itemImage,
    required this.itemPrice,
  });
}

class ItemModel {
  static final item = [
    Item(
      itemName: 'Redmi 6',
      itemDesc: 'This is Redmi 6',
      itemImage:
          'https://images.unsplash.com/photo-1519223400710-6da9e1b777ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      itemPrice: 450,
    )
  ];
}
