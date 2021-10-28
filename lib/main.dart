import 'dart:ui';

import 'package:flutter/material.dart';
 
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  int _value = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BeSquare App'),
          backgroundColor: Colors.orange.shade500,
        ),

        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                // Image.asset('assets/images/besquare.png'),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Welcome To BeSquare App!',
                      style: TextStyle(
                          color: Colors.orange.shade500,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    )),
                 Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                
                Container(
                  padding: const EdgeInsets.all(20),
                  child:DropdownButton(
                  value: _value,
                  items: const [
                    DropdownMenuItem(
                      child: Text("Choose Your Gender"),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text("Male"),
                      value: 1,
                     ),
                    DropdownMenuItem(
                      child: Text("Female"),
                      value: 2,
                    )
                  ],
             
                  onChanged: (int? value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  hint:const Text("Select item")
                    ),
                ),
                
                MaterialButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: const Text('Forgot Password'),
                ),
                
                Container(
                  height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: MaterialButton(
                      textColor: Colors.white,
                      color: Colors.orange.shade500,
                      child: const Text('Login'),
                      onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Congratulations! You successfully signed-up!'),
                         ),
                      );
                     },
                   )),

                Container(
                  child: Row(
                    children: <Widget>[
                      const Text('Already have an account?'),
                      MaterialButton(
                        textColor: Colors.blue,
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}