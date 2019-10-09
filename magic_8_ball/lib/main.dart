import 'package:flutter/material.dart';
import 'dart:math';

void main() {
 return runApp(
   MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Ask Me Something'),
         backgroundColor: Colors.blue.shade800,
       ),
       backgroundColor: Colors.blue.shade300,
       body: AskSomethingApp()
     ),
   )
 );
}

class AskSomethingApp extends StatefulWidget {
  @override
  _AskSomethingAppState createState() => _AskSomethingAppState();
}

class _AskSomethingAppState extends State<AskSomethingApp> {
   int imgControlAnswer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:
              FlatButton(
                onPressed: (){
                  setState(() {
                    imgControlAnswer = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$imgControlAnswer.png')
              ),
          ),
        ],
      ),
    );
  }
}
