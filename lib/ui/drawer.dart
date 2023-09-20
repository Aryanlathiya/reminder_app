import 'package:flutter/material.dart';
import 'package:reminder/ui/setting.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 260,
                width: 310,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Drawer.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                height: 60,
                width: 310,
                color: Colors.orange,
                child: Row(
                  children: [
                     const SizedBox(
                      width: 20,
                    ),
                    const Image(
                      width: 30,
                      height: 30,
                      image: AssetImage("assets/images/CrownIcon.png"),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text(
                      "Ad Free",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Go Pro",
                        style: TextStyle(color: Colors.orange, fontSize: 15),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              listTile(
                onTap: () {},
                text: "Active Reminders",
                image: const Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("assets/images/Home.png")),
              ),
              listTile(
                onTap: () {},
                text: "History",
                image: const Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("assets/images/history.png")),
              ),
              listTile(
                onTap: () {},
                text: "Backup & Restore",
                image: const Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("assets/images/backup.png")),
              ),
              listTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Setting()),
                  );
                },
                text: "Settings",
                image: const Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("assets/images/setting.png")),
              ),
              listTile(
                onTap: () {},
                text: "Help",
                image: const Image(
                    height: 30,
                    width: 30,
                    image: AssetImage("assets/images/help.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class listTile extends StatelessWidget {
  Function()? onTap;
  String? text;
  Image? image;
  String? subtitle;
  Color? color;

  listTile(
      {Key? key, this.onTap, this.text, this.image, this.subtitle, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: color,
      onTap: onTap,
      leading: image,
      subtitle: Text(
        subtitle ?? " ",
        style: const TextStyle(fontSize: 18),
      ),
      title: Text(
        text ?? "this is null",
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
