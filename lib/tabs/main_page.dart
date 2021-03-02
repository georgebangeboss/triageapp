import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/models/tenant.dart';
import 'package:rental_ui/tabs/home_page_tab/widgets/my_drawer.dart';

import 'home_page_tab/new_home_page.dart';
import 'payment_history_tab/ledger.dart';

class MainPage extends StatefulWidget {
  final Tenant tenant;

  MainPage(this.tenant);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  NewHomePage _newHomePage;
  Ledger _ledger;

  @override
  void initState() {
    super.initState();
  }

  void _navigate(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tenant>(
      create: (context) => widget.tenant,
      child: Consumer<Tenant>(
        builder: (context, tenant, aChild) {
          return Scaffold(
            backgroundColor: Palette.scaffoldBackground,
            body: [
              NewHomePage(widget.tenant),
              Ledger(widget.tenant),
            ].elementAt(_selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'Ledger',
                ),
              ],
              elevation: 20,
              currentIndex: _selectedIndex,
              onTap: (value) => {_navigate(value)},
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.lightGreen,
              child: Center(
                child: Text(
                  'PAY',
                ),
              ),
              onPressed: () {
//            Navigator.push(context, MaterialPageRoute(builder: (_) {
//              return PayRentTab();
//            }));
                _addBottomSheet(context);
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          );
        },
      ),
    );
  }

  void _addBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext buildContext) {
          return Container(
            height: MediaQuery.of(buildContext).size.height * 0.3,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    child: InkWell(
                      splashColor: Colors.green,
                      onTap: () {
                        //TODO make STK push
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(
                          height: 80,
                          width: 80,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage('assets/images/M-pesa-logo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    child: InkWell(
                      splashColor: Colors.red[200],
                      onTap: () {
                        //TODO open Eazzy Pay
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(
                          height: 80,
                          width: 80,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(
                                'assets/images/equity bank logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
