import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  var newusernamecontroller = TextEditingController();
  var newpasscontroller = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 10,
              ),
              Text('SignUp'),
            ],
          ),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                // Image.asset(
                //   'flutter_assets\\assets\\images\\img1.png',
                // ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Create an Account',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: newusernamecontroller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Username, Phone or Email',
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: newpasscontroller,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Choose your Password',
                      suffixIcon: Icon(Icons.password_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Signup')),
                SizedBox(
                  height: 100,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Help',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 31, 35, 35),
      ),
    );
  }
}
