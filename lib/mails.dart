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
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Cat"),
                accountEmail: Text("meow@meow.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/k3.jpeg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.mail_outline_outlined,
                    color: Colors.black),
                title: const Text("Sent"),
                onTap: () {
                  Navigator.pushNamed(context, '/send');
                },
                trailing: const Icon(Icons.add),
              ),
              ListTile(
                leading: const Icon(Icons.email_sharp, color: Colors.black),
                title: const Text("Received"),
                onTap: () {
                  Navigator.pushNamed(context, '/re');
                },
                trailing: const Icon(Icons.add),
              )
            ],
          ),
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
