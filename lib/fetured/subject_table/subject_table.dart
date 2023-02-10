import 'package:flutter/material.dart';

class StudyTable extends StatelessWidget {
  const StudyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now() ;
    String dateStr = "${today.day}-${today.month}-${today.year}";

    return     Center(
      child: Text('جدول يوم : $dateStr' ),
    );
  }
}
