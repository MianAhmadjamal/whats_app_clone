// ignore_for_file: prefer_const_constructors

import 'package:chat_application/UI/constatnt.dart';
import 'package:flutter/material.dart';

import 'stories.dart';
import 'storyconstant.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 5),
                  child: _stories(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Storeyviewscreen()));
                  }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _stories(goto) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe9eaec)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 33,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 75,
                  child: Align(
                      child: Text(
                    'Your Story',
                    overflow: TextOverflow.ellipsis,
                  )),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          Container(
            height: 22,
            width: screenwidth(context) * .98,
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 5, left: 20),
              child: Text(
                'Viewed Updates',
                style: TextStyle(),
              ),
            ),
          ),
          Column(
              children: List.generate(storyList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      GestureDetector(
                        onTap: goto,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: Stack(
                              children: <Widget>[
                                storyList[index]['hasStory']
                                    ? Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.blueAccent,
                                                width: 3)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 75,
                                            height: 75,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        storyList[index]
                                                            ['imageUrl']),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    storyList[index]
                                                        ['imageUrl']),
                                                fit: BoxFit.cover)),
                                      ),
                                storyList[index]['isOnline']
                                    ? Positioned(
                                        top: 38,
                                        left: 42,
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF66BB6A),
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Color(0xFFFFFFFF),
                                                  width: 3)),
                                        ),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              storyList[index]['name'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  fontFamily: 'Times new roman'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              storyList[index]['time'],
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}
