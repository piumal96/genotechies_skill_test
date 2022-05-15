import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SignIn",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: (){}, child: Text("Signin")),
              SizedBox(height: 20),
              TextButton(onPressed: (){}, child: Text("Already Haven't an acoount? SignUp here"))
            ],
          ),
        ),
      ),
    );
  }
}
