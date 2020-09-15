import 'package:flutter/material.dart';
import 'package:quizz/result.dart';
import 'dart:async';
import 'package:quizz/home.dart';
import 'package:quizz/stage.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
    home: Home()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {



  int timer = 15; //30;
  String showtimer;
  bool canceltimer = false;


  @override
  void initState() {
    starttimer();
    // TODO: implement initState
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void starttimer() async{
    const onesec =  Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          Navigator.pop(context);
          print('Failed');
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }




  var _questionIndex = 0;


  int baddha = 0;
  int mumukshu = 0;
  int sadhak = 0;
  int siddha = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;

       baddha = 0;
       mumukshu = 0;
       sadhak = 0;
       siddha = 0;
       timer = 15; //30
    });
  }

  void _answerQuestion(int score) {
    if(score == 1){
      baddha++;
    }
    if(score == 2){
      mumukshu++;
    }
    if(score == 3){
      sadhak++;
    }
    if(score == 4){
      siddha++;
    }

    setState(() {
//      print('$baddha, $mumukshu, $sadhak, $siddha');
            _questionIndex += 1;
            timer = 15; //30;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: _questionIndex < questions.length
            ? SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Quiz(
                          answerQuestion: _answerQuestion,
                          questionIndex: _questionIndex,
                          questions: questions,
                        ),
                      Text(showtimer!= null?showtimer:'15', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ],
                  ),
                ),
              ),
            )
            : SafeArea(child: Center(child: SingleChildScrollView(child: Result(resetHandler: _resetQuiz,badhha: baddha, mumukshu: mumukshu,sadhak: sadhak,siddha: siddha,)))),
      );

  }
}
