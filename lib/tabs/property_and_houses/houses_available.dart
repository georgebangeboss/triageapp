import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HousesAvailable extends StatefulWidget {
  @override
  _HousesAvailableState createState() => _HousesAvailableState();
}

class _HousesAvailableState extends State<HousesAvailable> {
  var myList = List<int>.generate(100, (index) => index);
  //TenantStatus tenantStatus = ModalRoute.of(currentState.context).settings.arguments;
  @override
  Widget build(BuildContext context) {
    //Key centerKey = UniqueKey();
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverPersistentHeader(
            pinned: false,
            floating: true,
            delegate: MySliverPersistentHeaderDelegate(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
                child: Card(
                  child: Container(
                    height: 50.0,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          gapPadding: 0.0,
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 0.0,
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 0.0,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: BorderSide(color: Colors.white),
                          gapPadding: 0.0,
                        ),
                        hintText: "Search property name",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
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

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate({this.child});

  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    if (child is Card && overlapsContent) {
      //todo improve this part
      //var card = child as Card;
      // card.elevation = 3;
      // card.shadowColor = Colors.black;
    }
    return child;
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
