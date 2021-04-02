import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/constants/route_names.dart';
import 'package:rental_ui/constants/text_styles.dart';
import 'package:rental_ui/moor/moor_db.dart';

import '../../sign_in_tab/create_and_edit_profile.dart';

class MyDrawer extends StatelessWidget {
  static Future<Tenant> localDBTenant;

  @override
  Widget build(BuildContext context) {
    localDBTenant =
        Provider.of<TenantDao>(context).tenantsGenerated().getSingle();
    return ListView(
      children: [
        DrawerHeader(
          child: FutureBuilder<Tenant>(
              future: localDBTenant,
              builder: (context, AsyncSnapshot<Tenant> asyncSnapshot) {
                if (asyncSnapshot.hasData) {
                  Tenant tenant = asyncSnapshot.data;
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
                          Navigator.of(context).pushNamed(createEditProfile,
                              arguments: TenantStatus.RESIDENT);
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '${tenant.firstName} ${tenant.lastName}',
                                  style: generalFont.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'propertyName',
                                  style: generalFont.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'House  : houseNumber',
                                  style: generalFont.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                } else if (asyncSnapshot.hasError) {
                  return null;
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ),
        InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            Navigator.of(context).pushNamed(rulesBook);
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
            //todo
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
            //todo
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
            Navigator.of(context).pushNamed(myRights);
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
