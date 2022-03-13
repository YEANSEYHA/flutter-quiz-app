import 'package:flutter/material.dart';
/* void main(){
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color ?',
      'What is your favorite team?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first Flutter'),
        ),
        body: Column(
          children: [
            Text('The questions !'),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
