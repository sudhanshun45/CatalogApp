import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 0));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password length is too short";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => moveToHome(context),
                    child: Container(
                      height: 50,
                      width: changeButton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
