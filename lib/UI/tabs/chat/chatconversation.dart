// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_application/UI/constatnt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Chatscreen extends StatefulWidget {
  final String nameofchatter;
  final String imagepath;

  const Chatscreen({
    Key? key,
    required this.nameofchatter,
    required this.imagepath,
  }) : super(key: key);

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          children: [
            conversationheader(),
            Spacer(),
            chatcomposer(),
          ],
        ),
      ),
    );
  }

  conversationheader() {
    return Container(
      height: screenheight(context) / 10 * 1.2,
      decoration: BoxDecoration(color: Colors.green),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                )),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                widget.imagepath,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenwidth(context) / 7 * 1.5,
                    child: Text(
                      widget.nameofchatter,
                      maxLines: 1,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'times new roman',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      'Typing......',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_call,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }

  chatcomposer() {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 61,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                ],
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.face,
                        color: Colors.grey,
                      ),
                      onPressed: () {}),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type Something...",
                          border: InputBorder.none),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.photo_camera,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration:
                BoxDecoration(color: Colors.green, shape: BoxShape.circle),
            child: InkWell(
              child: Icon(
                Icons.keyboard_voice,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
