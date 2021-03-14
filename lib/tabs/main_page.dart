
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/config/Palette.dart';
import 'home_page_tab/new_home_page.dart';
import 'payment_history_tab/ledger.dart';

class MainPage extends StatefulWidget {

  MainPage();

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

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
    return Scaffold(
          backgroundColor: Palette.scaffoldBackground,
          body: [
            NewHomePage(),
            Ledger(),
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
              _addBottomSheet(context);
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
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
