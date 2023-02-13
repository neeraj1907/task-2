import 'package:client_task_tracker_application/client_worksheet.dart';
import 'package:flutter/material.dart';

class ClientOne extends StatefulWidget {
  final String clientName;
  const ClientOne({
    Key? key,
    required this.clientName,
  }) : super(key: key);
  @override
  State<ClientOne> createState() => _ClientOneState();
}

class _ClientOneState extends State<ClientOne> {
  List<String> listofRequirnment = [];

  String requirnmentname = '';

  var requirnmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'page of client list',
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
              Text(widget.clientName),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ClientWorksheet()));
                },
                icon: Icon(Icons.person_outline_outlined))
          ],
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: requirnmentController,
                  decoration: InputDecoration(
                      // labelText: 'Requirnment',
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "What's Your Requirnment..",
                      suffixIcon: Icon(Icons.book),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView(
                  children: listofRequirnment
                      .map((name) => Card(
                            child: ListTile(
                              title: Text(name),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 2)),
                              selectedTileColor:
                                  Color.fromARGB(255, 116, 124, 123),
                              leading: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 15, 32, 32),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    listofRequirnment.remove(name);
                                  });
                                },
                                icon: Icon(
                                  Icons.delete,
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
              listofRequirnment.add(requirnmentController.text);
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 31, 35, 35),
          splashColor: Colors.white,
        ),
      ),
    );
  }
}
