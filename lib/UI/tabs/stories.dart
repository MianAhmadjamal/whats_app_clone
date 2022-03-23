// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/controller/story_controller.dart';

class Storeyviewscreen extends StatefulWidget {
  const Storeyviewscreen({Key? key}) : super(key: key);

  @override
  _StoreyviewscreenState createState() => _StoreyviewscreenState();
}

class _StoreyviewscreenState extends State<Storeyviewscreen> {
  final _mycontroller = StoryController();
  final List<StoryItem> storyItems = [
    StoryItem.text(
      title: "My First Story",
      backgroundColor: Colors.blue,
      textStyle: TextStyle(
        fontSize: 25,
      ),
    ),
    StoryItem.text(
      title: "My Second Story",
      backgroundColor: Colors.green,
      textStyle: TextStyle(
        fontSize: 25,
      ),
    ),
    StoryItem.pageImage(
      imageFit: BoxFit.contain,
      caption: "Flowers",
      url: 'https://randomuser.me/api/portraits/men/31.jpg',
      controller: StoryController(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StoryView(
      controller: _mycontroller,
      storyItems: storyItems,
      inline: false,
      onComplete: () {
        Navigator.pop(context);
      },
    ));
  }
}
