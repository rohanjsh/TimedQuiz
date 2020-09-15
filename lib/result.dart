import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int badhha;
  final int mumukshu;
  final int sadhak;
  final int siddha;

  final Function resetHandler;

  Result({this.badhha, this.mumukshu, this.sadhak, this.siddha, this.resetHandler});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'बद्ध - ${badhha.toString()}',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            'मुमुक्षु - ${mumukshu.toString()}',

            style: TextStyle(

              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            'साधक - ${sadhak.toString()}',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            'सिद्ध - ${siddha.toString()}',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 30,),
          FlatButton(
            color: Color(0xffF29BA1),
            child: Text('पुन्हा प्रयत्न करा !'),
            onPressed: resetHandler,
            textColor: Colors.white,
          ),
      SizedBox(height: 10,),
      FlatButton(
      onPressed: (){
          Navigator.pop(context);
      },
      color: Color(0xffF29BA1),
      child: Text('Back', style: TextStyle(color: Colors.white),),
      )],
      ),
    );
  }
}
