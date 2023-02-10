import 'package:flutter/material.dart';

Widget personImage({required String name, String? imgSrc}) {
  return Row(
    children: [
      CircleAvatar(
        maxRadius: 50,
        backgroundImage: AssetImage(imgSrc!),
        backgroundColor: Colors.green,
      ),
      Card(
        elevation: 7,
        child: Text(name),
      )
    ],
  );
}
