import 'package:flutter/material.dart';

class LeftPanel extends StatelessWidget {
  final String? name;
  final String? caption;
  final String? songName;
  final Size size;
  const LeftPanel({
    super.key,
    required this.size,
    this.name,
    this.caption,
    this.songName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: size.height,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "$name",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "$caption",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.music_note,
                color: Colors.white,
                size: 15,
              ),
              Flexible(
                child: Text(
                  "$songName",
                  style: const TextStyle(color: Colors.white, height: 1.5),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
