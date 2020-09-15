import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width/1.6,
      height: MediaQuery.of(context).size.height/10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          onPressed: selectHandler,
          child: Text(answerText, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          color: Color(0xffF29BA1),
          elevation: 0.2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
//    Container(
//      width: double.infinity,
//      child: RaisedButton(
//        color: Colors.blue,
//        textColor: Colors.white,
//
//      ),
//    );
  }
}
