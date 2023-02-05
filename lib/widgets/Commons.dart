import 'package:flutter/material.dart';

class CommmonIconButton extends StatelessWidget {
  const CommmonIconButton({
    super.key,
    required this.child,
    required this.color,
    this.size,
  });
  final Widget child;
  final Color color;
  final double? size;

  void onpressed() {}
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: onpressed,
        child: child);
  }
}
