import 'package:app_diary/widget/boxMenu.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 30% of our total height
            height: size.height * .30,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.menu,
                          color: Colors.blue,
                        )),
                  ),
                  Text("Good Morning \nTplus",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  Row(
                    children: [Menu(), Menu()],
                  ),
                  Row(
                    children: [Menu(), Menu()],
                  ),
                  Row(
                    children: [Menu(), Menu()],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
