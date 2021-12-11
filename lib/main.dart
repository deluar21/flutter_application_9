import 'package:flutter/material.dart';
import 'package:flutter_application_9/Item.dart';
import 'package:flutter_application_9/item_widget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyItem(),
  ));
}

class MyItem extends StatefulWidget {
  const MyItem({Key? key}) : super(key: key);

  @override
  _MyItemState createState() => _MyItemState();
}

class _MyItemState extends State<MyItem> {
  final dummyList = List.generate(40, (index) => ItemModel.item[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
    );
  }
}
