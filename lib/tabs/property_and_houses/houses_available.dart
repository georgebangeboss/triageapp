import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HousesAvailable extends StatefulWidget {
  @override
  _HousesAvailableState createState() => _HousesAvailableState();
}

class _HousesAvailableState extends State<HousesAvailable> {
  var myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  //TenantStatus tenantStatus = ModalRoute.of(currentState.context).settings.arguments;
  @override
  Widget build(BuildContext context) {
    Key centerKey = UniqueKey();
    return Scaffold(
      body: CustomScrollView(
        center: centerKey,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return createTheWidgets(myList, Colors.blue)[index];
              },
              childCount: myList.length,
            ),
          ),
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return createTheWidgets(myList, Colors.orange)[index];
              },
              childCount: myList.length,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> createTheWidgets(List<int> intList, Color crayon) {
    return intList.map((e) {
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          color: crayon,
          height: 70,
          alignment: Alignment.center,
          child: Text(e.toString()),
        ),
      );
    }).toList();
  }
}
