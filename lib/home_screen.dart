import 'package:flutter/material.dart';

class Home_scren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(
          Icons.menu,
        ),
        title: Text("Palestine"),
        actions: [
          IconButton(
              onPressed: () {
                print("on search");
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: onNotification,
              icon: Icon(Icons.notification_important))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection:Axis.horizontal ,
        child: Row(
          children: [
           Image(image: NetworkImage
             (
             "https://wallpapercave.com/wp/wp2440308.jpg"
           ))
          ],
        ),
      ),
      /*body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Expanded(
              child: Container(
                color: Colors.cyan,
                width: double.infinity,
                child: Text(
                  "Ghaza",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blueGrey,
                child: Text(
                  "Aksa",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),*/
    );
  }

  void onNotification() {
    print("Notification display");
  }
}
