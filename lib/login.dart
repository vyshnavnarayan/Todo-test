import 'package:flutter/material.dart';
import 'package:todonew/home.dart';
import 'package:todonew/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('LOGIN'),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password'
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {
                    
                  }, child: Text('Forgot password')),
                ],
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              }, child: Text('LOGIN')),
              SizedBox(height: 20,),
              Text('Or'),
              SizedBox(height: 20,),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
              }, child: Text('Sign Up'))
            ],
          ),
        ),
      ),

    );
  }
}