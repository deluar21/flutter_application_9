import 'package:flutter/material.dart';

import 'Item.dart';

class ItemWidget extends StatefulWidget {
  Item item;
  ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.amber,
        elevation: 1.5,
        child: ListTile(
          leading: Image.network(widget.item.itemImage),
          title: Text(widget.item.itemName),
          subtitle: Text(widget.item.itemDesc),
          trailing: Text(
            '\$${widget.item.itemPrice}',
            textScaleFactor: 2.0,
          ),
        ),
      ),
    );
  }
}
