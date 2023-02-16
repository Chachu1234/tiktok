import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woff/controllers/state.dart';
import 'package:woff/widgets/profileimage.dart';
import 'package:woff/widgets/sample_data.dart';
import '../auth/login.dart';
import '../common/common.dart';
import 'album.dart';

// ignore: must_be_immutable
class RightPanel extends StatefulWidget {
  late RxInt? likes;
  late RxInt? comments;
  late RxInt? shares;
  final String? profileImg;
  final String? albumImg;
  late RxInt? bookmark;
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
  final ProviderStates controllers = Get.put(ProviderStates());

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
              onTap: () async {
                final bool? result = await Commonfun().checkuserlooged();
                if (!result!) {
                  // ignore: use_build_context_synchronously
                  changepage(context);
                }
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
            Obx(
              () => Text(
                controllers.likes.value.toString(),
                // widget.shares.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 5,
              width: 0,
            ),
            InkWell(
              onTap: () {
                controllers.addcomments();
                // setState(() {
                //   widget.comments = (widget.comments! + 1);
                // });
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
            Obx(
              () => Text(
                controllers.comments.value.toString(),
                // widget.shares.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () async {
                final bool? result = await Commonfun().checkuserlooged();
                if (!result!) {
                  // ignore: use_build_context_synchronously
                  changepage(context);
                }
                controllers.addbookMarks();
                // setState(() {
                //   widget.bookmark = (widget.bookmark! + 1);
                // });
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
            Obx(
              () => Text(
                controllers.bookMarks.value.toString(),
                // widget.shares.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () async {
                final bool? result = await Commonfun().checkuserlooged();
                if (!result!) {
                  // ignore: use_build_context_synchronously
                  changepage(context);
                }
                controllers.addshares();
                // setState(() {
                //   widget.shares = widget.shares! + 1;
                // });
              },
              child: const CircleAvatar(
                radius: 30,
                child: Icon(Icons.share),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Text(
                controllers.shares.value.toString(),
                // widget.shares.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
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

  changepage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: ((context) {
      return const LoginScreen();
    })));
  }
}
