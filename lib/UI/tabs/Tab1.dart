// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:chat_application/UI/tabs/chat/chatconversation.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          chattile('Ahmad Jamal', 'I am Available at 9.PM', '!2: 57 PM',
              'assets/avater.png'),
          chattile(
              'Joan Muhammad', 'Okey wait', '12:58 PM', 'assets/avater.png'),
          chattile('Ali shair', 'Ok! I understand', '1:02 PM',
              'assets/agreescreen.png'),
          chattile('Zfar Iqbal', 'DOne kro', '1:15 PM', 'assets/avater.png'),
          chattile('Bilal', 'Ok BOss', '1: 40 PM', 'assets/avater.png'),
          chattile('Ali', 'Ok Jani', '2:10 PM', 'assets/avater.png'),
          chattile('Rizwan', 'Thek HAi', '8:40 PM', 'assets/avater.png'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }

  chattile(
    String name,
    String msg,
    String time,
    String img,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Chatscreen(
                        imagepath: img,
                        nameofchatter: name,
                      )));
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
              msg,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
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
