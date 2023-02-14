import 'package:flutter/material.dart';

class ClientWorksheet extends StatelessWidget {
  final String clientName; // Didn't understood
  const ClientWorksheet({
    Key? key,
    required this.clientName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 129, 111),
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              Text('Your Worksheet'),
            ],
          ),
          actions: [],
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                ),
                Text(
                  '${clientName}',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 15, 32, 32),
      ),
    );
  }
}
