// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          calltile('Ahmad Jamal', '2 Missed Calls', '!2: 57 PM',
              'assets/avater.png', Colors.red),
          calltile('Bilal', 'Received call', '!2: 57 PM', 'assets/avater.png',
              Colors.green),
          calltile('Jaon Muhammad', 'Missed call', '!2: 57 PM',
              'assets/avater.png', Colors.red),
          calltile('Zafar Iqbal', '2 Missed Calls', '!2: 57 PM',
              'assets/avater.png', Colors.red),
          calltile('Danish', 'Received Calls', '!2: 57 PM', 'assets/avater.png',
              Colors.green),
          calltile('Zafar Iqbal', 'Received Calls', '!2: 57 PM',
              'assets/avater.png', Colors.green),
          calltile('Danish', 'Missed Calls', '!2: 57 PM', 'assets/avater.png',
              Colors.red),
          calltile('Zain', 'Received Call', '!2: 57 PM', 'assets/avater.png',
              Colors.red),
        ]),
      ),
    );
  }

  calltile(
    String name,
    String callstatue,
    String time,
    String img,
    Color clr,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => Chatscreen(
          //               imagepath: img,
          //               nameofchatter: name,
          //             )));
        },
        child: ListTile(
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage(
              img,
            ),
            backgroundColor: Color.fromARGB(255, 241, 240, 240),
          ),
          title: Text(
            name,
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'times new roman',
                fontWeight: FontWeight.w600),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              callstatue,
              style: TextStyle(
                  fontSize: 12, color: clr, fontWeight: FontWeight.w700),
            ),
          ),
          trailing: Column(
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
