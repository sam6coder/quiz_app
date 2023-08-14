import 'question.dart';
import 'main.dart';
import 'options.dart';

class QuizBrain{
  int questionNumber=0;

  List<Question> questionBank=[
    Question(q:'EC2 stands for.',a:'Elastic Compute Cloud'),
    Question(q:'Amazon Web service falls into which of the following cloud- computing category',a:'Infrastructure as a service'),

    Question(q:'How many buckets can you create in AWS by default',a:'100 buckets'),
    Question(q:'Which of the following is a billing and account management service',a: 'Amazon devpay'),

    Question(q:'What are the advantages of auto scaling',a: 'All of the above'),
    Question(q:'Which of the following dynamically grow and shrink the load-balancing capacity to adjust to traffic demands?',a: 'elastic load balancing'),
    Question(q:'Which of the following is an edge-storage or content-delivery system that caches data in different physical locations?',a:'Amazon Cloudfront'),
    Question(q:'Which of the following allows you to create instances of the MySQL database to support your Web sites?',a:'Amazon Relational Database Service'),
    Question(q:'Which of the following is a structured data store that supports indexing and data queries to both EC2 and S3?',
        a:'Amazon SimpleDB'),
    Question(
        q:'.Which of the following database should be used for a solution that has a very high availability?',
        a:'SimpleDB'),
    Question(q:'Which of the following is a message queue or transaction system for distributed Internet-based applications?.',a: 'Amazon Simple Queue Service'),
    Question(
        q:'Simple Storage Service use for?',
        a:'It allows the users to store and retrieve various types of data using API calls.',),
    Question(
        q:'Amazon S3 stores data as objects within resources called?',
        a:'Buckets'),
  ];




  void nextQuestion(){
    if(questionNumber<questionBank.length-1){
      questionNumber++;
    }

  }

String getQuestionText(){
  return questionBank[questionNumber].questionText;
}

String getQuestionAnswer(){
  return questionBank[questionNumber].questionAnswer;
}


  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {


      return true;

    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}

