import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SIGN UP'),
              SizedBox(height: 30,),
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Name'
                  ),
                ),TextField(
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number'
                  ),
                ),TextField(
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                ),TextField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password'
                  ),
                ),
                ElevatedButton(onPressed: () {
                  
                }, child: Text('REGISTER'))
            ],
          ),
        ),
      ),
    );
  }
}