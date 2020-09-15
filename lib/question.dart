import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
   return  Container(
     width: MediaQuery.of(context).size.width/1.2,
     child: Center(
       child: Text(questionText,
         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
       ),
     ),
   );
//     Container(
//      width: double.infinity,
//      margin: EdgeInsets.all(10),
//      child: Text(
//        questionText,
//        style: TextStyle(fontSize: 28),
//        textAlign: TextAlign.center,
//      ),
//    );
  }
}
