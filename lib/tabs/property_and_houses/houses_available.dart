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
    Key centerKey = UniqueKey();
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        center: centerKey,
        slivers: [
          MyCustomSearchBar(
            key: centerKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.0,
                child: TextField(
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

//render object widget
class MyCustomSearchBar extends SingleChildRenderObjectWidget {
  MyCustomSearchBar({Widget child, Key key}) : super(child: child, key: key);
  @override
  RenderObject createRenderObject(BuildContext context) {
    return MySearchBarSliverRenderObject();
  }
}

//render object class
class MySearchBarSliverRenderObject extends RenderSliverSingleBoxAdapter {
  MySearchBarSliverRenderObject({RenderBox child}) : super(child: child);
  @override
  void performLayout() {
    if (child == null) {
      geometry = SliverGeometry.zero;
      return;
    }
    final SliverConstraints constraints = this.constraints;
    child.layout(constraints.asBoxConstraints(), parentUsesSize: true);
    double childExtent;
    switch (constraints.axis) {
      case Axis.horizontal:
        childExtent = child.size.width;
        break;
      case Axis.vertical:
        childExtent = child.size.height;
        break;
    }
    assert(childExtent != null);
    final double paintedChildSize =
        calculatePaintOffset(constraints, from: 0.0, to: childExtent);
    final double cacheExtent =
        calculateCacheOffset(constraints, from: 0.0, to: childExtent);

    assert(paintedChildSize.isFinite);
    assert(paintedChildSize >= 0.0);
    geometry = SliverGeometry(
      scrollExtent: childExtent,
      paintOrigin: constraints.scrollOffset + 40.0,
      paintExtent: childExtent,
      cacheExtent: cacheExtent,
      maxPaintExtent: childExtent,
      hitTestExtent: paintedChildSize,
      hasVisualOverflow: childExtent > constraints.remainingPaintExtent ||
          constraints.scrollOffset > 0.0,
    );
    setChildParentData(child, constraints, geometry);
  }
}
