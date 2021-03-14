
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/dummy_data/dummy_tenants.dart';
import 'package:rental_ui/logger/log_printer.dart';
import 'package:rental_ui/models/tenant.dart' as lib1;
import 'package:rental_ui/tabs/main_page.dart';
import 'package:rental_ui/tabs/sign_in_tab/create_and_edit_profile.dart';

import 'moor/moor_db.dart';

const savedKey = "";
const savedSecret = "";


void main() {
  runApp(MultiProvider(
    providers: [
      Provider(
        create:(_)=>AppDatabase().paymentDao,
      ),
      Provider(
        create:(_)=>AppDatabase().unitDao,
      ),
      Provider(
        create:(_)=>AppDatabase().tenantDao,
      ),
      Provider(
        create:(_)=>AppDatabase().notificationDao,
      ),
      Provider(
        create:(_)=>AppDatabase().kinDao,
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  Future<bool> isFirstTime;

  final Logger log =Logger(
    printer: MyLogPrinter(),
  );
  //StreamSubscription _subscription;
  //Connectivity _connectivity;
  //bool _connectionStatus = false;

  //ConnectionStatusSingleton connectionStatus;

  @override
  void initState() {
    super.initState();
    isFirstTime=_checkIfInitialTenantExist(Provider.of<TenantDao>(context, listen: false));
//    _connectivity = Connectivity();
//    _subscription =
//        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
//      if (result == ConnectivityResult.wifi ||
//          result == ConnectivityResult.mobile) {
//        setState(() {
//          _connectionStatus = true;
//        });
//        showConnectivitySnackBar(_connectionStatus);
//      }
//    });
    //connectionStatus = ConnectionStatusSingleton.getInstance()..initialize();
  }

  @override
  void dispose() {
    super.dispose();
    //_subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
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
      home:FutureBuilder<bool>(
        future: isFirstTime,
        builder: (context,AsyncSnapshot<bool> asyncSnapshot){
          if(asyncSnapshot.hasData){
            bool isFirstTime=asyncSnapshot.data;
            if(isFirstTime){
              return CreateEditProfile(TenantStatus.GUEST);
            }else{
              return MainPage();
            }
          }
          else{
            //TODO add refresh widget
            log.d ('refreshing............');
            return null;
          }
        },
      ),
          //_checkAndDecide(isFirstTime, dummyTenant),
    );
  }

  void showConnectivitySnackBar(dynamic hasConnection) {
    print('Has connection: $hasConnection');
    if (hasConnection == true) {
      SnackBar shnack = SnackBar(
        content: Text('Check your internet connection!'),
        backgroundColor: Colors.brown[500],
      );
      Scaffold.of(navigatorKey.currentContext).showSnackBar(shnack);
    }
  }
  Future<bool> _checkIfInitialTenantExist(TenantDao tenantDao) async {
    var initialTenant=await tenantDao.tenantsGenerated().getSingle();
    log.d('the local tenant is .............................');

    if(initialTenant==null){
      log.d ('NOBODY');
      return true;
    }else{
      log.d(initialTenant.firstName);
      return false;
    }
  }

}
