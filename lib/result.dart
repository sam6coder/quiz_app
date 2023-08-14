import 'package:flutter/material.dart';
import 'main.dart';
import 'quiz_brain.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1E33),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: ResultPage(),
        ),
      ),
    );
  }
}

QuizPage quizPage = QuizPage();
QuizBrain quizBrain = QuizBrain();

class ResultPage extends StatelessWidget {
  String checkMarks() {
    if (count >= 7)
      return 'Passed';
    else
      return 'Failed';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 30.0),
          child: Container(
            color: Color(0xFF33334A),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text('Your Score',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontFamily: 'Playfair Display')),
                      ),
                      Container(
                        child: Text(
                          '$count',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 90.0,
                              fontFamily: 'Playfair Display'),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'You have ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontFamily: 'Playfair Display'),
                            ),
                          ),
                          Container(
                            child: Text(
                              checkMarks(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontFamily: 'Playfair Display'),
                            ),
                          ),
                          Container(
                            child: Text(
                              ' The Exam',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontFamily: 'Playfair Display'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 30.0,
                            weight: 10.0,
                          ),
                          Text(
                            ' $count Correct ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: 'Playfair Display'),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.red,
                            size: 30.0,
                          ),
                          Text(
                            ' $wrong Wrong ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: 'Playfair Display'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quiz_app()));
                          },
                          child: Text('Replay Quiz')),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
