import 'package:flutter/material.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/dummy_data/dummy_tenants.dart';
import 'package:rental_ui/models/tenant.dart';
import 'package:rental_ui/tabs/main_page.dart';
import 'package:rental_ui/tabs/sign_in_tab/create_and_edit_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  bool isFirstTime;

  //ConnectionStatusSingleton connectionStatus;

  @override
  void initState() {
    super.initState();
    //connectionStatus = ConnectionStatusSingleton.getInstance()..initialize();
    isFirstTime = _findOutIfIsFirstTime();
  }

  @override
  Widget build(BuildContext context) {
    Tenant currentTenant = dummyTenant;
    //return StreamProvider.value(
    //value: connectionStatus.connectionChange,
    //child:
    return MaterialApp(
      title: 'Sarrin Rental',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        fontFamily: 'PTSans',
        appBarTheme: AppBarTheme(
          color: Palette.primaryBackground,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Palette.paymentCardColor,
          filled: true,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Palette.primaryBackground,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Color(0xffA8DADC)),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xffA8DADC),
          selectedItemColor: Colors.white,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(15.0),
            primary: Colors.white60,
            backgroundColor: Palette.buttonBackGround,
            onSurface: Color(0xffBD5940),
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(15.0),
            backgroundColor: Colors.grey[300],
            onSurface: Color(0xffBD5940),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            side: BorderSide(
              width: 2,
              color: Colors.brown[200],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: (isFirstTime) ? CreateEditProfile(null) : MainPage(dummyTenant),
    );
    //);
  }

  void showConnectivitySnackBar(dynamic hasConnection) {
    if (hasConnection == false) {
      SnackBar shnack = SnackBar(
        content: Text('Check your internet connection!'),
        backgroundColor: Colors.brown[500],
      );
      Scaffold.of(navigatorKey.currentContext).showSnackBar(shnack);
    }
  }

  bool _findOutIfIsFirstTime() {
    //TODO
    return false;
  }
}
