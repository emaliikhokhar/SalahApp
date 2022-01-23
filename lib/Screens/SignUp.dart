// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
        ),
        body: Center(
            child: Column(children: [
          // Padding(
          //         padding: const EdgeInsets.all(15),
          //         child: TextField(
          //           controller: _passwordController,
          //           style: const TextStyle(color: Colors.white),
          //           decoration: const InputDecoration(
          //             border: OutlineInputBorder(),
          //             labelText: 'Password',
          //             hintText: '********',
          //           ),
          //         )),
        ])));
  }
}
