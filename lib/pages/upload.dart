import 'package:flutter/material.dart';
import 'package:woff/pages/profile/common/for_profile.dart';

class UpLoadVideo extends StatelessWidget {
  const UpLoadVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Center(
        child: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black,
          size: 35,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Texts(
            text: "Allow  TIKTOK to take pictures and record video ",
            color: Colors.black,
            fontSize: 18,
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            color: Colors.grey.withOpacity(0.4),
          ),
          const SizedBox(
            height: 10,
          ),
          const InkWell(
            child: Center(
              child: Texts(
                text: "Allow",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            color: Colors.grey.withOpacity(0.4),
          ),
          const SizedBox(
            height: 10,
          ),
          const InkWell(
            child: Center(
              child: Texts(
                text: "Deny",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            color: Colors.grey.withOpacity(0.4),
          ),
          const SizedBox(
            height: 10,
          ),
          const InkWell(
              child: Center(
                  child: Texts(
            text: " Deny and Don`t Ask Again",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          )))
        ],
      ),
    );
  }
}
