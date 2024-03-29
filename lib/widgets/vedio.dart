import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:woff/widgets/right.dart';
import 'header.dart';
import 'left.dart';

class VideoPlayerItems extends StatefulWidget {
  final String videoUrl;
  final String? name;
  final String? caption;
  final String? songName;
  final String? profileImg;
  final RxInt? likes;
  final RxInt? bookmark;
  final RxInt? comments;
  final RxInt? shares;
  final String? albumImg;
  const VideoPlayerItems(
      {super.key,
      this.bookmark,
      this.name,
      this.caption,
      this.songName,
      this.profileImg,
      this.likes,
      this.comments,
      this.shares,
      this.albumImg,
      required this.videoUrl});

  // final Size size;

  @override
  // ignore: library_private_types_in_public_api
  _VideoPlayerItemsState createState() => _VideoPlayerItemsState();
}

class _VideoPlayerItemsState extends State<VideoPlayerItems> {
  late VideoPlayerController _videoController;
  bool isShowPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
      widget.videoUrl.toString(),
    )..initialize().then((value) {
        _videoController.play();
        setState(() {
          isShowPlaying = false;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoController.dispose();
  }

  Widget isPlaying() {
    return _videoController.value.isPlaying && !isShowPlaying
        ? Container()
        : const Icon(
            Icons.play_arrow,
            size: 60,
            color: Colors.white,
          );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: InkWell(
          onTap: () {
            setState(() {
              _videoController.value.isPlaying
                  ? _videoController.pause()
                  : _videoController.play();
            });
          },
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Stack(
                    // fit: StackFit.expand,
                    children: <Widget>[
                      InkWell(
                        child: SizedBox.expand(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: SizedBox(
                              width: _videoController.value.size.width,
                              height: _videoController.value.size.height,
                              child: VideoPlayer(_videoController),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: isPlaying(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25, top: 20, bottom: 0),
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const HeaderHomePage(),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              LeftPanel(
                                size: size,
                                name: widget.name,
                                // "${widget.name}",
                                caption: widget.caption,
                                // "${widget.caption}",
                                songName: widget.songName,
                                //"${widget.songName}",
                              ),
                              RightPanel(
                                  size: MediaQuery.of(context).size,
                                  likes: widget.likes,
                                  // "${widget.likes}",
                                  comments: widget.comments,
                                  // "${widget.comments}",
                                  shares: widget.shares,
                                  bookmark: widget.bookmark,
                                  // "${widget.shares}",
                                  profileImg: widget.profileImg,

                                  // "${widget.profileImg}",
                                  albumImg: widget.albumImg

                                  //"${widget.albumImg}",
                                  )
                            ],
                          ))
                        ],
                      ),
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
