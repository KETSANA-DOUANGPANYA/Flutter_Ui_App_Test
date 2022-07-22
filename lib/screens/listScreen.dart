import 'package:flutter/material.dart';

class ListDetail extends StatelessWidget {
  const ListDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(100, (i) => "Item $i");
    return Scaffold(
        appBar: AppBar(
          title: Text("ListData"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${items[index]}'),
                onTap: () {},
              );
            }));
  }
}
