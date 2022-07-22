import 'package:app_diary/screens/listScreen.dart';
import 'package:flutter/material.dart';

class MenuFragment extends StatelessWidget {
  const MenuFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Stack(
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
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.map),
                        title: Text("Location"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.phone,
                        ),
                        title: Text("Phone"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text("List"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ListDetail()),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.image),
                        title: Text("Photo"),
                        subtitle: Text("Subtitle Text"),
                        trailing: Icon(Icons.delete),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.image),
                        title: Text("Photo"),
                        subtitle: Text("Subtitle Text"),
                        trailing: Icon(Icons.delete),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.image),
                        title: Text("Photo"),
                        subtitle: Text("Subtitle Text"),
                        trailing: Icon(Icons.delete),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
