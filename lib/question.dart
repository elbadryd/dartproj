import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  
  Question(this.questionText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      // child: RaisedButton(onPressed: null,
      // color: Colors.blue,
      child: Text(questionText)
      // )
        
      // ),
    );
  }
}
