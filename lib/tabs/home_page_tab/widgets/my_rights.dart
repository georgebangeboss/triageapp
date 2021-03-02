import 'package:flutter/material.dart';

class MyRights extends StatelessWidget {
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
          title: Text('Tenant Rights'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Text(
                    'Here are the rights of tenants....',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.brown[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
