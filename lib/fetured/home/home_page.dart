import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myson/fetured/subject_table/subject_table.dart';

import '../../shared/widgets/person_image.dart';
import '../student_page/student_page.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/background.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentPage(stID: 1,stName: 'محمد',)));
                  },
                    child: personImage(name: 'محمد', imgSrc: 'assets/images/child2.jpg')),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentPage(stID: 2,stName: 'ايثار',)));
                    },
                    child: personImage(name: 'ايثار', imgSrc: 'assets/images/child1.png')),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const StudyTable()),
          );
        },
        child: Icon(Icons.man),
      ),
    );
  }
}
