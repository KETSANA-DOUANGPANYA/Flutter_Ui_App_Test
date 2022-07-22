import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  // String title;
  // double amount;
  // Color color;
  // double size;
  //
  // Menu(this.title,this.amount,this.color,this.size);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
// padding: EdgeInsets.all(20),
// height:size.height * .20,
// width: size.width * .40,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              offset: Offset(5, 10),
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 5,
            ),
          ]),
          child: Material(
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: size.width * .20,
                    ),
                    Text(
                      "Text",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
