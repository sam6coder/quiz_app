import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';
import 'option_brain.dart';
import 'result.dart';

QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(Quiz_app());
}
int count=0;
int wrong=0;
OptionsBrain optionBrain = OptionsBrain();

class Quiz_app extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF1D1E33),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}
List<int> base=[];

class _QuizPageState extends State<QuizPage>{
  List<Widget> scoreKeeper = [];

  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getQuestionAnswer();
    String describe = optionBrain.getdesc();
    setState(() {
      if (quizBrain.isFinished() == true) {
        if (userPickedAnswer == correctAnswer){
          Alert(
            context: context,

            desc: 'You Are Correct. You\'ve reached the end of the quiz.',
            content: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Result()));
                },
                child: Text('Goto Result Page')))
            .show();
        count++;}
        else{
          Alert(
              context: context,

              desc: 'You Are Wrong . You\'ve reached the end of the quiz.',
              content: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Result()));
                  },
                  child: Text('Goto Result Page')))
              .show();
        wrong++;}

        quizBrain.reset();
        optionBrain.reset();

      } else {
        if (userPickedAnswer == correctAnswer) {
          Alert(
            context: context,
            title: 'You Are Correct',
            desc: '$describe',
          ).show();
          count++;
        } else {
          Alert(

            context: context,
            title: 'You Are Wrong',
            desc: 'Correct Answer is $correctAnswer . $describe',
          ).show();
          wrong++;
        }

        quizBrain.nextQuestion();
        optionBrain.nextOption();

      }
    });
  }

  int getCount(){
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xFF33334A),
                ),
                child: Text(
                  optionBrain.getOption1(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(optionBrain.getOption1());
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF33334A),
              ),
              child: Text(
                optionBrain.getOption2(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(optionBrain.getOption2());
                //The user picked false.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xFF33334A),
                ),
                child: Text(
                  optionBrain.getOption3(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(optionBrain.getOption3());
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xFF33334A),
                ),
                child: Text(
                  optionBrain.getOption4(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(optionBrain.getOption4());
                }),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

//Color(0xFF1D1E33)
