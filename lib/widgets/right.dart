import 'package:flutter/material.dart';
import 'package:woff/widgets/profileimage.dart';

import 'album.dart';

class RightPanel extends StatelessWidget {
  final String? likes;
  final String? comments;
  final String? shares;
  final String? profileImg;
  final String? albumImg;
  const RightPanel({
    super.key,
    required this.size,
    this.likes,
    this.comments,
    this.shares,
    this.profileImg,
    this.albumImg,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            getProfile(profileImg),
            const SizedBox(
              height: 5,
            ),
            const InkWell(
              child: Icon(
                Icons.favorite,
                size: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "$likes",
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 5,
              width: 0,
            ),
            const InkWell(
              child: Icon(
                Icons.comment,
                size: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "$comments",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
              width: 0,
            ),
            const InkWell(
              child: Icon(
                Icons.bookmark,
                size: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "$comments",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            const CircleAvatar(
              radius: 30,
              child: Icon(Icons.share),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "$shares",
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 8,
            ),
            getAlbum(albumImg)
          ],
        ),
      ),
    );
  }
}
