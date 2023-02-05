import 'package:flutter/material.dart';

class Circilewidget extends StatelessWidget {
  const Circilewidget(
      {super.key,
      required this.imageUrl,
      required this.shape,
      required this.color,
      this.child});
  final String imageUrl;
  final BoxShape shape;
  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 2),
      width: 100,
      height: 95,
      child: Stack(
        children: <Widget>[
          Container(
            width: 100,
            height: 90,
            decoration: BoxDecoration(
                border: Border.all(color: color),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover)),
          ),
          Positioned(
              bottom: 5,
              left: 60,
              child: Container(
                  width: 35,
                  height: 22,
                  decoration: BoxDecoration(shape: shape, color: color),
                  child: child))
        ],
      ),
    );
  }
}

class Texts extends StatelessWidget {
  const Texts(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize});
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
