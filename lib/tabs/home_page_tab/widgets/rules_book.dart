import 'package:flutter/material.dart';

class RulesBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Rules Book'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Text(
                  'Here are the house rules....',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.brown[600],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
