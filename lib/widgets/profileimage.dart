import 'package:flutter/material.dart';

Widget getProfile(img) {
  return SizedBox(
    width: 60,
    height: 60,
    child: Stack(
      children: <Widget>[
        Container(
          width: 60,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 5,
            left: 12,
            child: Container(
              width: 23,
              height: 16,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
              child: const Center(
                  child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              )),
            ))
      ],
    ),
  );
}
