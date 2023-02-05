import 'package:flutter/material.dart';
import 'package:woff/widgets/vedio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  final _PageController = PageController(initialPage: 0);

  List<Widget> pagesList = const <Widget>[
    VideoPlayerItems(
      videoUrl: 'assets/videos/vid.mp4',
      comments: "12k",
      shares: "546",
      songName: "woregna",
      profileImg:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
      likes: "345M",
      name: "boy abd girl",
      caption: "see cojiskjgvijksanvb",
      albumImg:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
    ),
    VideoPlayerItems(
      videoUrl: 'assets/videos/vid2.mp4',
      comments: "34k",
      shares: "556",
      songName: "gogogo",
      profileImg:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
      likes: "345M",
      name: "rweoifgjn",
      caption: "awuitghjkbd",
      albumImg:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
    ),
    VideoPlayerItems(
      videoUrl: 'assets/videos/vid.mp4',
      comments: "142k",
      shares: "56",
      songName: "road map",
      profileImg:
          "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&w=600",
      likes: "345M",
      name: "beatiful",
      caption: "see wonvbjksdxbn",
      albumImg:
          "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=600",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pagesList.length,
        controller: _PageController,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          return pagesList[index];
        }),
      ),
    );
  }
}
