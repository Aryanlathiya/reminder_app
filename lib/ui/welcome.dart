import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder/ui/home.dart';




class Welcomepage extends StatefulWidget {
  Welcomepage({Key? key}) : super(key: key);

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Expanded(
                    child: Text(
                      'Welcome to Reminders',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Icon(
                  Icons.notifications_none,
                  size: 150,
                  color: Color.fromARGB(255, 152, 117, 250),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Expanded(
                    child: Text(
                      'The best Reminders app out there! Combine your notifications, reminders and scheduling in one powerful call app! Get features like:',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 152, 117, 250),
                        )),
                    Expanded(
                      child: const Text(
                        'Set call notifications and reminders',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 152, 117, 250),
                        )),
                    Expanded(
                      child: const Text(
                        'Easy after call menu with your daily\nreminder overviwe',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 152, 117, 250),
                        )),
                    Text(
                      'Spam filter',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 152, 117, 250),
                        )),
                    Expanded(
                      child: const Text(
                        'Add contact details to your calender',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 152, 117, 250),
                        )),
                    Text(
                      'call features',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text(
                    "Allow Permission",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(280, 60),
                    backgroundColor: Color.fromARGB(255, 152, 117, 250),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
