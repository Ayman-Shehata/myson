import 'package:flutter/material.dart';

Widget personImage({required String name, String? imgSrc}) {
  return Column(
    children: [
      Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        child: CircleAvatar(
          maxRadius: 70,
          backgroundImage: AssetImage(imgSrc!),
          backgroundColor: Colors.green,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name,
            textScaleFactor: 1.5,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
      )
    ],
  );
}
