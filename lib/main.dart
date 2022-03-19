import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
/* void main(){
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

    final questions = const [
      {'questionText': 'what is your favorite color?', 'answers': ['REd', 'Blue', 'Red'],
        
      },
      {'questionText': 'what is your favorite club?', 'answers': ['Chelsea', 'PSG', 'Bayern Munich'],
        
      },
      {'questionText': 'what is your favorite song?', 'answers': ['Vaireak Yuth', 'Khat Jame', 'Sereymun'],
        
      },

    ];

  void _answerQuestion(){

    if(_questionIndex < questions.length){
      print('We have more questons !');
    }else{
      print('No more questions!');
    }

    setState( (){
      _questionIndex = _questionIndex + 1;
    });
    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

/*     questions = []; */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first Flutter'),
        ),
        body: _questionIndex < questions.length ? Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(
          child: Text('I did it !'),
        ) ,
      ),
    );
  }
}
