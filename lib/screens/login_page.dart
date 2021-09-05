import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.cover,
        ),
        Text(
          "Welcome",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Hello");
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: null, child: Text("Sign Up")),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
