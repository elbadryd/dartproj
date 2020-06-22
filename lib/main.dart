import 'package:flutter/material.dart';
import 'survey.dart';
import 'result.dart';
import 'push_notifications.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // FirebaseMessaging firebaseMessaging = new FirebaseMessaging();
    // firebaseMessaging.subscribeToTopic('main-topic');
    // print('subscribed');
    PushNotificationsManager().subscribe();
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;
  final questions = const [
    {
      'questionText': 'what\'s your favorite color',
      'answers': [{'text':'blue', 'score': 1}, {'text':'green', 'score': 2}, {'text':'yellow', 'score': 3},]
    },
    {
      'questionText': 'what\'s your favorite animal',
      'answers': [{'text':'zebra', 'score': 1}, {'text':'dog', 'score': 2}, {'text':'cat', 'score': 3},]
    },
    {
      'questionText': 'another question',
      'answers': [{'text':'1', 'score': 1}, {'text':'2', 'score': 2}, {'text':'3', 'score': 3},]
    }
  ];
  answerQuestion(int score) {
    setState(() {
      questionIndex++;
      totalScore = totalScore + score;
    });
    // setState((int score) {
    //   totalScore = totalScore + score;
    // });
  //   if (questionIndex < questions.length) {}
  }
    void startOver(){
    setState((){
      this.questionIndex = 0;
      this.totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('myapp'),
          backgroundColor: Colors.cyan,
        ),
        body: questionIndex < questions.length
            ? Survey(answerQuestion, questions, questionIndex)
            : Result(totalScore, questionIndex, startOver),
      ),
    );
  }
}
