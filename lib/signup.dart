import 'package:flutter/material.dart';
import 'package:todonew/login.dart';
import 'package:todonew/signuprepo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassworController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('SIGN UP'),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is mandatory';
                    }
                  },
                  decoration: InputDecoration(hintText: 'Name'),
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is mandatory';
                    }
                  },
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                TextFormField(
                  controller: _phonenumberController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is mandatory';
                    }
                  },
                  decoration: InputDecoration(hintText: 'Phone Number'),
                ),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is mandatory';
                    }
                  },
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     hintText: 'Confirm Password'
                //   ),
                // ),
                ElevatedButton(
                    onPressed: () async {
                      print(_nameController.text);
                      print(_emailController.text);
                      print(_phonenumberController.text);
                      print(_passwordController.text);

                      if (_formKey.currentState!.validate()) {
                        await SignupRepo().createUser(
                            _nameController.text,
                            _emailController.text,
                            _phonenumberController.text,
                            _passwordController.text,
                            context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      }
                    },
                    child: Text('REGISTER'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
