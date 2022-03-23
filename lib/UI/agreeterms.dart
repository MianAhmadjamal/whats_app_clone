// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_application/UI/Phonenumberform.dart';
import 'package:flutter/material.dart';

import 'constatnt.dart';

class Agreetermspage extends StatefulWidget {
  const Agreetermspage({Key? key}) : super(key: key);

  @override
  State<Agreetermspage> createState() => _AgreetermspageState();
}

class _AgreetermspageState extends State<Agreetermspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: screenwidth(context) / 10 * 4),
            child: Column(
              children: [
                Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 58, 185, 62),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A simple, secure and reliable way \n           to connect with freinds \n                     and relatives ',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 40,
                ),
                Image(
                  image: AssetImage(
                    'assets/agreescreen.png',
                  ),
                  width: screenwidth(context) / 20 * 18,
                ),
                SizedBox(
                  height: screenheight(context) / 10 * 1,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Tap "Agree and Continue" to accept the',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Terms of services',
                          style: TextStyle(color: Colors.green, fontSize: 13)),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Phonenumberfield()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Center(
                          child: Text(
                        'AGREE AND CONTINUE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
