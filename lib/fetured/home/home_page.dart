import 'package:flutter/material.dart';

import '../../shared/widgets/person_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            personImage(name: 'محمد',imgSrc: ''),
            personImage(name: 'ايثار',imgSrc: ''),
          ],
        ),
      ),
    );
  }
}
