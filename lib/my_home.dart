import 'package:client_task_tracker_application/signup.dart';
import 'package:flutter/material.dart';
import 'package:client_task_tracker_application/home.dart';

List<int> username = [6264567150];
List<int> password = [1234];

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  List<String> value = [];

  void login() {
    if (usernameController.text == '6264567150' &&
        passwordController.text == '1234') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Home(value: usernameController.text),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Text("Pralee Technology & Games",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 26, 160, 156),
                    controller: usernameController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Username, Phone or email",
                        suffixIcon: Icon(
                          Icons.people_alt_outlined,
                          // color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  width: 300,
                  height: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 26, 160, 156),
                    controller: passwordController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "  Password",
                        suffixIcon: Icon(
                          Icons.password_sharp,
                          // color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(
                                20))), //Helped By Google for textfield decoration
                  ),
                  width: 300,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // value.add(usernameController.text);
                          login();
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => Home(
                          //           value: (usernameController.text),
                          //         )));
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w200),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      'New User?',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signup()));
                        },
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w200),
                        ))
                  ],
                ),
              ],
            ),
            color: Color.fromARGB(255, 15, 32, 32)),
      ),
    );
  }
}
