import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(

                ),
              ),
              SizedBox(
                height:20,
              ),
              TextField(

              ),
            ],
          ),
        ),
      ),
    );
  }
}
