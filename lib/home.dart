import 'package:client_task_tracker_application/about.dart';
import 'package:client_task_tracker_application/client_one.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String value;
  const Home({
    Key? key,
    required this.value,
  }) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String cilentName = '';
  var clientNameController = TextEditingController();
  List<String> listOfClient = [];
  String name = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'page2',
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 9, 129, 111),
                title: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Pralee Games & Technology'),
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.logout)),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => About()));
                      },
                      icon: Icon(Icons.info))
                ]),
            body: Center(
              child: Container(
                width: 300,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ('Welcome '),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Text(
                          widget.value,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'Company Orders',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: clientNameController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter Client Name',
                          suffixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: ListView(
                      children: listOfClient
                          .map((name) => Card(
                                child: ListTile(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => ClientOne(
                                          clientName: listOfClient.firstWhere(
                                              (element) => element == name)),
                                    ));
                                  },
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 2),
                                  ),
                                  // selected: true,
                                  selectedTileColor:
                                      Color.fromARGB(255, 116, 124, 123),
                                  title: Text(
                                    name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  leading: Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 15, 32, 32),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        listOfClient.remove(name);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.delete_rounded,
                                      color: Color.fromARGB(255, 15, 32, 32),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ))
                  ],
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 15, 32, 32),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  listOfClient.add(clientNameController.text);
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 31, 35, 35),
              splashColor: Colors.white,
            )));
  }
}
