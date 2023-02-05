import 'package:flutter/material.dart';
import '../profile/common/for_profile.dart';

class List_Tile extends StatelessWidget {
  const List_Tile(
      {super.key,
      this.trialing,
      required this.messageBody,
      required this.userName,
      required this.shape,
      required this.color,
      required this.imageUrl});
  final String imageUrl;
  final BoxShape shape;
  final Color color;
  final Widget? trialing;
  final Widget userName;
  final Widget messageBody;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Circilewidget(imageUrl: imageUrl, shape: shape, color: color),
      title: userName,
      subtitle: messageBody,
      trailing: trialing,
    );
  }
}
