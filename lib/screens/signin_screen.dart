import 'package:flutter/material.dart';
import 'package:genotechies/screens/signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("SIGN IN"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Again",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Signin")),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },
                child: Text("Already Haven't an acoount? Signup here"))
          ],
        ),
      ),
    );
  }
}
