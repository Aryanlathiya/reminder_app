import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder/ui/add.dart';
import 'package:reminder/ui/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Reminders",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Welcome to Reminders",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Tap the + button to add your first task",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 152, 117, 250),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Reminder()),
                    );
                    },
                    icon: Icon(
                      CupertinoIcons.plus,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
