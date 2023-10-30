import 'package:flutter/material.dart';

class User_model{
  final int id;
  final String name;
  final  String phone;


  User_model({
required this.id,
required this.name,
required this.phone,
});
}

class User_screen extends StatelessWidget {

  List<User_model>users=[
    User_model(id:1, name: "Body", phone: "01234556789"),
    User_model(id:2, name: "Body Alby", phone: "01234556789"),
    User_model(id:3, name: "Body 3ion Alby", phone: "01234556789"),
    User_model(id:4, name: "Body Rohy", phone: "01234556789"),
    User_model(id:1, name: "Body", phone: "01234556789"),
    User_model(id:2, name: "Body Alby", phone: "01234556789"),
    User_model(id:3, name: "Body 3ion Alby", phone: "01234556789"),
    User_model(id:4, name: "Body Rohy", phone: "01234556789"),
    User_model(id:1, name: "Body", phone: "01234556789"),
    User_model(id:2, name: "Body Alby", phone: "01234556789"),
    User_model(id:3, name: "Body 3ion Alby", phone: "01234556789"),
    User_model(id:4, name: "Body Rohy", phone: "01234556789"),
    User_model(id:1, name: "Body", phone: "01234556789"),
    User_model(id:2, name: "Body Alby", phone: "01234556789"),
    User_model(id:3, name: "Body 3ion Alby", phone: "01234556789"),
    User_model(id:4, name: "Body Rohy", phone: "01234556789"),
    User_model(id:1, name: "Body", phone: "01234556789"),
    User_model(id:2, name: "Body Alby", phone: "01234556789"),
    User_model(id:3, name: "Body 3ion Alby", phone: "01234556789"),
    User_model(id:4, name: "Body Rohy", phone: "01234556789"),
    User_model(id:1, name: "Body", phone: "01234556789"),
    User_model(id:2, name: "Body Alby", phone: "01234556789"),
    User_model(id:3, name: "Body 3ion Alby", phone: "01234556789"),
    User_model(id:4, name: "Body Rohy", phone: "01234556789"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Container(
          width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          )

          , itemCount: users.length),
    );
  }


  Widget buildUserItem(User_model user)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          child: Text(
            "${user.id}",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${user.name}",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
                "${user.phone}",
                style: TextStyle(color: Colors.grey)
            ),
          ],

        )
      ],
    ),
  );
}
