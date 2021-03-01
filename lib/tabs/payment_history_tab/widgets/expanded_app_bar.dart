import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/constants/text_styles.dart';
import 'package:rental_ui/models/tenant.dart';

class ExpandedAppBar extends StatefulWidget {
  final Tenant _tenant;

  @override
  _ExpandedAppBarState createState() => _ExpandedAppBarState();

  ExpandedAppBar(this._tenant);
}

class _ExpandedAppBarState extends State<ExpandedAppBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tenant>(
      builder: (context, tenant, aChild) {
        return Container(
          padding: EdgeInsets.only(top: 80, left: 5, right: 5),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Rent Due:',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green[200],
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Kshs ${tenant.rentBalance.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green[200],
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
