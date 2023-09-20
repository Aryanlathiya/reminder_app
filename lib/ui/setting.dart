import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:reminder/ui/drawer.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.teal.shade600,
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.quiz_outlined,
              color: Colors.black,
              size: 25,
            ),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/dnd.png")),
            text: "Do Not Disturb (DND)",
            subtitle: "Disabled",
            color: Colors.white,
            onTap: () {},
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/dark.png")),
            text: "Dark Theme",
            color: Colors.white,
            onTap: () {
              Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
            },
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/color.png")),
            text: "Color scheme",
            color: Colors.white,
            onTap: () {},
          ),
          SizedBox(
            height: 30,
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/file.png")),
            text: "Alerts",
            color: Colors.white,
            onTap: () {},
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/lock.png")),
            text: "Security lock",
            color: Colors.white,
            onTap: () {},
          ),
          SizedBox(
            height: 30,
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/calender.png")),
            text: "Date format",
            subtitle: "6/20/2022",
            color: Colors.white,
            onTap: () {},
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/time.png")),
            text: "Use 24-hour format",
            subtitle: "1:00 Pm",
            color: Colors.white,
            onTap: () {},
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/money.png")),
            text: "Currency",
            subtitle: "USD - \$",
            color: Colors.white,
            onTap: () {},
          ),
          SizedBox(
            height: 30,
          ),
          listTile(
            image: Image(
                height: 40,
                width: 40,
                image: AssetImage("assets/images/help.png")),
            text: "Help",
            color: Colors.white,
            onTap: () {},
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
// class listTile extends StatelessWidget {
//   Function()? onTap;
//   String? text;
//   Image? image;
//   String? subtitle;
//   Color? titlecolor;
//   listTile(
//       {Key? key,
//       this.onTap,
//       this.text,
//       this.image,
//       this.subtitle,
//       this.titlecolor = Colors.white})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onTap,
//       leading: image,
//       title: Text(
//         text ?? "this is null",
//         style: TextStyle(fontSize: 18),
//       ),
//     );
//   }
// }