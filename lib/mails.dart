import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Navigator Appbar"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/send');
                },
                icon: const Icon(Icons.email_rounded)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/re');
                },
                icon: const Icon(Icons.email_outlined)),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  Navigator.pushNamed(context, '/send');
                },
                child: const Text("SENT MAIL")),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  Navigator.pushNamed(context, '/re');
                },
                child: const Text("RECEIVED")),
          ],
        )));
  }
}
