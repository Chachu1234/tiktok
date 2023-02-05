import 'package:flutter/material.dart';

Widget getAlbum(albumImg) {
  return Container(
    width: 60,
    height: 50,
    decoration: const BoxDecoration(
        // shape: BoxShape.circle,
        // color: black
        ),
    child: Stack(
      children: <Widget>[
        Container(
          width: 55,
          height: 45,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        ),
        Center(
          child: Container(
            width: 35,
            height: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(albumImg), fit: BoxFit.cover)),
          ),
        )
      ],
    ),
  );
}
