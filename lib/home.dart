import 'package:flutter/material.dart';
import 'package:quizz/questionppr.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: SafeArea(
        child: Center(
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/3.5,
                  width: MediaQuery.of(context).size.height/3.5,
                  child: Image.asset('images/logo.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => QuestionPpr(),
                  ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 88.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],

                    ),
                    child: Center(child: Text('१. प्रश्नमंजुषा', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 88.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],

                    ),
                    child: Center(child: Text('२. आत्मपरीक्षण', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),

        ),
      ),
    );
//      Scaffold(
//        body: Center(
//          child: FlatButton(
//            child: Text('Click'),
//            onPressed: (){
//              setState(() {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
//              });
//            },
//          ),
//        ),
//      );

  }
}
