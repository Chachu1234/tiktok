import 'package:flutter/material.dart';

import 'package:woff/widgets/sample_data.dart';
import 'package:woff/widgets/vedio.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _PageController = PageController(initialPage: 0);

  // List<Widget> pagesList = <Widget>[
  //   VideoPlayerItems(
  //     videoUrl: 'assets/videos/vid.mp4',
  //     comments: controllers.comments.value,
  //     shares: 546,
  //     bookmark: 3,
  //     songName: "woregna",
  //     profileImg:
  //         "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
  //     likes: 345,
  //     name: "boy abd girl",
  //     caption: "see cojiskjgvijksanvb",
  //     albumImg:
  //         "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
  //   ),
  //   const VideoPlayerItems(
  //     videoUrl: 'assets/videos/vid2.mp4',
  //     comments: 34,
  //     shares: 556,
  //     bookmark: 45,
  //     songName: "gogogo",
  //     profileImg:
  //         "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
  //     likes: 345,
  //     name: "rweoifgjn",
  //     caption: "awuitghjkbd",
  //     albumImg:
  //         "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
  //   ),
  //   const VideoPlayerItems(
  //     videoUrl: 'assets/videos/vid.mp4',
  //     comments: 20,
  //     shares: 56,
  //     bookmark: 0,
  //     songName: "road map",
  //     profileImg:
  //         "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&w=600",
  //     likes: 345,
  //     name: "beatiful",
  //     caption: "see wonvbjksdxbn",
  //     albumImg:
  //         "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=600",
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: items.length,
        controller: _PageController,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          return VideoPlayerItems(
            videoUrl: items[index]['videoUrl'],
            name: items[index]['name'],
            caption: items[index]['caption'],
            songName: items[index]['songName'],
            profileImg: items[index]['profileImg'],
            likes: items[index]["likes"],
            comments: items[index]['comments'],
            shares: items[index]['shares'],
            albumImg: items[index]['albumImg'],
            bookmark: items[index]['bookMark'],
          );
        }),
      ),
    );
  }
}
