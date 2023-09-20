import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder/ui/home.dart';

class Reminder extends StatelessWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 193, 193),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
        },),
        title: const Text(
          "My Reminder",
          style: TextStyle(color: Colors.black),
        ),
       
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          MyContainer(
            height: 265,
            width: 450,
            widget: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 300),
                    child: Text(
                      "hgs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 15,
                    endIndent: 15,
                    color: Color.fromARGB(255, 215, 213, 213),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 300),
                    child: Text(
                      "hag",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadiusDirectional.circular(10)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.plus,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 330),
                    child:
                        IconButton(onPressed: () {}, icon: const Icon(Icons.brush)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MyContainer(
            height: 220,
            width: 450,
            widget: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Time",
                        style: TextStyle(fontSize: 20),
                      ),
                      MyButton(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Today 11:10 AM",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    const Spacer(),
                    const date()
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(CupertinoIcons.repeat)),
                    const SizedBox(
                      width: 10,
                    ),
                   const redropdown(),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(CupertinoIcons.volume_up)),
                    const SizedBox(
                      width: 10,
                    ),
                   const redropdown1()
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MyContainer(
            height: 70,
            width: 450,
            widget: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Place",
                    style: TextStyle(fontSize: 18),
                  ),
                  MyButton(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){}, child: const Text('Cancel',style: TextStyle(fontSize: 20,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),)),
              TextButton(onPressed: (){}, child: const Text('Save',style: TextStyle(fontSize: 20,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold))),
            ],
          )
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  double? height;
  double? width;
  Widget? widget;
  String? text;
  MyContainer({Key? key, this.height, this.width, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: widget,
    );
  }
}
class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}
class date extends StatefulWidget {
  const date({ Key? key }) : super(key: key);

  @override
  State<date> createState() => _dateState();
}

class _dateState extends State<date> {
   DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: ()=> _selectDate(context),
            icon: const Icon(Icons.date_range));
  }
}



class redropdown extends StatefulWidget {
  const redropdown({ Key? key }) : super(key: key);

  @override
  State<redropdown> createState() => _redropdownState();
}

class _redropdownState extends State<redropdown> {
  String dropdownValue = "Dont't Repeat";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      style: const TextStyle(color: Colors.grey,fontSize: 20),
      underline: Container(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        "Dont't Repeat",
        'Every Day',
        'Every Week',
        'Every Month',
        'Every Year',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}




class redropdown1 extends StatefulWidget {
  const redropdown1({ Key? key }) : super(key: key);

  @override
  State<redropdown1> createState() => _redropdown1State();
}

class _redropdown1State extends State<redropdown1> {
   String dropdownValue = "Keep Ringing";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      style: const TextStyle(color: Colors.grey,fontSize: 20),
      underline: Container(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        "Keep Ringing",
        'Ring once',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}