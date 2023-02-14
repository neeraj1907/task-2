import 'package:flutter/material.dart';

import 'my_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Login Page', home: MyHome());
  }
}
