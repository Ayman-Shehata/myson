import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key, required this.stID, required this.stName});
  final int stID;
  final String stName;
  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/background.jpg'),
          ),
        ),
        child: Column(
          children: [
            Text(_page.toString()),
            // ElevatedButton(
            //   child: Text('Go To Page of index 1'),
            //   onPressed: () {
            //     final CurvedNavigationBarState? navBarState =
            //         _bottomNavigationKey.currentState;
            //     navBarState?.setPage(1);
            //   },
            // ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home, size: 30,color: Color(0xffFAF8F1),),
          Icon(Icons.book, size: 30,color: Color(0xffFAF8F1),),
          Icon(Icons.task, size: 30,color: Color(0xffFAF8F1),),
          Icon(Icons.ondemand_video_sharp, size: 30,color: Color(0xffFAF8F1),),
          Icon(Icons.card_giftcard, size: 30,color: Color(0xffFAF8F1),),
        ],
        color: Color(0xffC58940),
        buttonBackgroundColor:Color(0xffC58940),// Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
