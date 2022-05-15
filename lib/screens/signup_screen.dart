import 'package:flutter/material.dart';
import 'package:genotechies/screens/signin_screen.dart';

import '../services/authservice.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController passwordConfirmController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
  resizeToAvoidBottomInset: false,
      body: Padding(

        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
              "Hello Budy!",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Confirm Password"),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              authService().SignIn(emailController.text, passwordController.text);
            }, child: Text("SignUp")),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
                },
                child: Text("Already Haven an acoount? SignIn here"))
          ],
        ),
      ),
    );
  }
}
