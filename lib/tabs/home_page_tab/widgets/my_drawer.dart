import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/constants/text_styles.dart';
import 'package:rental_ui/models/tenant.dart';
import 'package:rental_ui/tabs/home_page_tab/widgets/my_rights.dart';
import 'package:rental_ui/tabs/home_page_tab/widgets/rules_book.dart';
import 'package:rental_ui/tabs/my_profile_tab/tenant_profile.dart';

class MyDrawer extends StatefulWidget {
  final Tenant _tenant;

  MyDrawer(this._tenant);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Consumer<Tenant>(builder: (context, tenant, aChild) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Palette.primaryBackground,
                    foregroundColor: Colors.white,
                    radius: 50,
                    child: Text(
                      '${tenant.firstName[0].toUpperCase()}${tenant.lastName[0].toUpperCase()}',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return TenantProfile(tenant);
                    }));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '${widget._tenant.firstName} ${widget._tenant.lastName}',
                          style: generalFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '${widget._tenant.propertyName}',
                          style: generalFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'House  : ${widget._tenant.houseNumber}',
                          style: generalFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
        InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RulesBook();
                },
              ),
            );
          },
          child: ListTile(
            leading: Icon(Icons.rule_outlined),
            title: Text('Rules Book'),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
        InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            Navigator.pop(context);
          },
          child: ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text('Announcements'),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
        InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            Navigator.pop(context);
          },
          child: ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('My Stats'),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
        InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MyRights();
                },
              ),
            );
          },
          child: ListTile(
            leading: Icon(Icons.menu_book_sharp),
            title: Text('My Rights'),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
      ],
    );
  }
}
