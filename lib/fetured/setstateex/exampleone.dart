import 'package:flutter/material.dart';

class BtnExample extends StatefulWidget {
  const BtnExample({Key? key}) : super(key: key);

  @override
  State<BtnExample> createState() => _BtnExampleState();
}

class _BtnExampleState extends State<BtnExample> {
  // bool variable
  bool isVoted = false;
  int likesNum=12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: (isVoted) ? Colors.yellow : Colors.grey,
            ),
            Text('Number: $likesNum'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: (isVoted) ? Colors.green : Colors.blue,
              ),
                onPressed: () {
                  setState(() {
                    if (isVoted){
                      likesNum-=1;
                      isVoted = false;
                    }else{
                      likesNum+=1;
                      isVoted = true;
                    }
                    //(isVoted) ? isVoted = false : isVoted = true;
                  });
                },
                child: (isVoted) ? Text('DisLike') : Text('Like'))
          ],
        ),
      ),
    );
  }
}
