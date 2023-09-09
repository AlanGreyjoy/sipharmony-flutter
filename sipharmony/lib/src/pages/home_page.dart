import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(bottom: 20.0),
          children: <Widget>[
            WelcomeCard(),
            RecentCallHistory(),
          ],
        ));
  }
}

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        child:
            ListTile(leading: Icon(Icons.hail), title: Text('Welcome Alan!')));
  }
}

class RecentCallHistory extends StatelessWidget {
  const RecentCallHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        child: ListTile(
            leading: Icon(Icons.history), title: Text('Recent Call History')));
  }
}
