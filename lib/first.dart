import 'package:flutter/material.dart';

class FirstProgram extends StatelessWidget {
  const FirstProgram({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
        appBar: AppBar(
            title: Text('hello word')
        ),
        body: Center(
          child: Text("hello mahesh"),
        ),
      ),

    );
  }
}