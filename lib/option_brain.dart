import 'package:quiz_app/options.dart';

class OptionsBrain {
  int optionNumber=0;
  List<Options> optionBank=[
    Options(o1: 'Elastic Cloud Compute', o2: 'Elastic Configuration Cloud',o3:'Elastic Compute Cloud',d:'EC2 stands for Elastic Compute Cloud',o4:'Elastic Cloud Configuration'),
    Options(o1: 'Infrastructure as a service', o2: 'Back-end as a service', o3: 'Platform as a service',d:'Amazon Web Services falls into Infrastructure as a Service cloud-computing category'
    ,o4:'Software as a Service'),
    Options(o1: '25 buckets', o2: '100 buckets', o3:'50 buckets',d:'By default, customers can provision up to 100 buckets per AWS account. However, you can increase your Amazon S3 bucket limit by visiting AWS Service Limits',o4: '200 buckets'),
    Options(o1: 'multi-factor authentication', o2: 'amazon elastic mapreduce', o3:'Amazon Mechanical Turk',d:'Amazon DevPay is a simple-to-use online billing and account management service that makes it easy for businesses to sell applications that are built in, or run on top of, Amazon Web Services',o4: 'Amazon devpay'),
    Options(o1: 'fault tolerance', o2: 'better availability', o3:'Better Cost Management',d:'All of the above',o4: 'All of the above'),
    Options(o1:'Amazon Cloud-front',o2: 'elastic load balancing', o3: 'elastic caches',d:'Elastic Load Balancing can dynamically grow and shrink the load-balancing capacity to adjust to traffic demands and also support sticky sessions to address more advanced routing needs', o4: 'amazon rds'),
    Options(o1: 'Amazon Associates Web Services', o2: 'Amazon SimpleDB', o3: 'Amazon Cloudfront',d:'Cloudfront is similar to systems such as Akamai.com, but is proprietary to Amazon.com and is set up to work with Amazon Simple Storage System (Amazon S3).',o4:'Amazon Relational Database Service'),
    Options(o1: 'Amazon Relational Database Service', o2: 'Amazon Simple Storage System', o3: 'Amazon Simple Queue Service',d:'RDS provides features such as automated software patching, database backups, and automated database scaling via an API call',o4:'Amazon Elastic Compute Cloud'),
    Options(o1: 'CloudWatch', o2: 'Amazon Cloudfront', o3: 'Amazon SimpleDB',d:'SimpleDB isn’t a full database implementation',o4:'All of the Above'),
    Options(o1: 'SimpleDB', o2: 'RDS', o3: 'Amazon EC2',d:'Use SimpleDB for the lowest administrative overhead.',o4:' None of the mentioned'),
    Options(o1: 'Amazon Simple Queue Service', o2: 'Amazon Simple Notification Service', o3: 'Amazon Elastic Compute Cloud',d:'In a loosely coupled SOA system, a transaction manager is required to ensure that messages are not lost when a component isn’t available',o4:'Amazon Simple Storage System'),
    Options(o1: 'It does contain computing element', o2: 'It allows the users to store and retrieve various types of data using API calls.', o3: 'both of the mentioned above',d:' stands for Simple Storage Service. It allows the users to store and retrieve various types of data using API calls. It doesn’t contain any computing element',o4:'None of the above'),
    Options(o1: 'Amazon RDS', o2: 'EC2 Instances', o3: 'Auto Scaling',d:'Amazon S3 Data is stored as objects within resources called “buckets”, and a single object can be up to 5 terabytes in size. ',o4:'Buckets')
  ];

  void nextOption(){
    if(optionNumber<optionBank.length-1)
      optionNumber++;
  }

  String getOption1(){
    return optionBank[optionNumber].option1;
  }

  String getOption2(){
    return optionBank[optionNumber].option2;
  }

  String getOption3(){
    return optionBank[optionNumber].option3;
  }

    String getOption4(){
    return optionBank[optionNumber].option4;
    }

    String getdesc(){
    return optionBank[optionNumber].desc;
    }

  bool isFinished() {
    if (optionNumber >= optionBank.length - 1) {

      return true;

    } else {
      return false;
    }
  }

  void reset() {
    optionNumber = 0;
  }



}