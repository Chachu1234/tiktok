import 'package:flutter/material.dart';

class UploadIcon extends StatelessWidget {
  const UploadIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 30,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: 38,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color.fromARGB(255, 250, 45, 100)),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 38,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color.fromARGB(255, 32, 211, 234)),
          ),
          Center(
            child: Container(
              height: double.infinity,
              width: 38,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: Colors.white),
              child: const Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
