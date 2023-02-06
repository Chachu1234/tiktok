import 'package:flutter/material.dart';

ButtonStyle styleButton(Color color) {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all(color),
  );
}
