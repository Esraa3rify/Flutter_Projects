import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_screen extends StatelessWidget {
  var email_controller= TextEditingController();
  var password_controller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        //to give the column padding
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller:email_controller,
              decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller:password_controller,
              decoration: InputDecoration(
                  labelText: 'password',
                  prefixIcon: Icon(Icons.password),
                  suffix: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  print(email_controller.text);
                  print(password_controller.text);
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don't have an account"),
                TextButton(onPressed:(){}, child: Text("Register Now"))

              ],
            )
          ],
        ),
      ),
    );
  }
}
