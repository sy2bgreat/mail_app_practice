import 'package:flutter/material.dart';
import 'mails.dart';
import 'receive_mail.dart';
import 'send_mail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) {
        return const MyHomePage();
      },
      '/send': (context) {
        return const SendMail();
      },
      '/re': (context) {
        return const ReceiveMail();
      }
    });
  }
}

// 
