import 'package:flutter/material.dart';
import 'package:woff/widgets/profileimage.dart';

import 'album.dart';

// ignore: must_be_immutable
class RightPanel extends StatefulWidget {
  late double? likes;
  late double? comments;
  late double? shares;
  final String? profileImg;
  final String? albumImg;
  late double? bookmark;
  RightPanel({
    super.key,
    this.bookmark,
    required this.size,
    this.likes,
    this.comments,
    this.shares,
    this.profileImg,
    this.albumImg,
  });

  final Size size;

  @override
  State<RightPanel> createState() => _RightPanelState();
}

class _RightPanelState extends State<RightPanel> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: widget.size.height,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            getProfile(widget.profileImg),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                  isLiked
                      ? widget.likes = (widget.likes! + 1)
                      : widget.likes = widget.likes! - 1;
                });
              },
              child: Icon(
                Icons.favorite,
                size: 45,
                color: isLiked
                    ? const Color.fromARGB(255, 156, 10, 86)
                    : Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.likes.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 5,
              width: 0,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.comments = (widget.comments! + 1);
                });
              },
              child: const Icon(
                Icons.comment,
                size: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.comments.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.bookmark = (widget.bookmark! + 1);
                });
              },
              child: const Icon(
                Icons.bookmark,
                size: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.bookmark.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.shares = widget.shares! + 1;
                });
              },
              child: const CircleAvatar(
                radius: 30,
                child: Icon(Icons.share),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.shares.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 8,
            ),
            getAlbum(widget.albumImg)
          ],
        ),
      ),
    );
  }
}
