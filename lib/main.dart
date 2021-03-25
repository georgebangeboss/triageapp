import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/logger/log_printer.dart';
import 'package:rental_ui/tabs/main_page.dart';
import 'package:rental_ui/tabs/property_and_houses/houses_available.dart';
import 'package:rental_ui/tabs/sign_in_tab/create_and_edit_profile.dart';
import 'package:rental_ui/tabs/sign_in_tab/terms_and_conditions_tab.dart';

import 'moor/moor_db.dart';
import 'tabs/home_page_tab/widgets/my_rights.dart';
import 'tabs/home_page_tab/widgets/rules_book.dart';

const savedKey = "";
const savedSecret = "";

void main() {
  AppDatabase myDB = AppDatabase();
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (_) => myDB.paymentDao,
      ),
      Provider(
        create: (_) => myDB.unitDao,
      ),
      Provider(
        create: (_) => myDB.tenantDao,
      ),
      Provider(
        create: (_) => myDB.notificationDao,
      ),
      Provider(
        create: (_) => myDB.kinDao,
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final Logger log = Logger(
    printer: MyLogPrinter(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/myRights': (context) => MyRights(),
        '/rulesBook': (context) => RulesBook(),
        '/editProfile': (context) => CreateEditProfile(),
        '/termsAndConditions': (context) => TermsAndConditionsTab(),
        '/houseListingPage': (context) => HousesAvailable(),
      },
      title: 'Sarrin Rental',
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
      debugShowCheckedModeBanner: true,
      home: FutureBuilder<bool>(
        future: checkIfInitialTenantExist(
            Provider.of<TenantDao>(context, listen: false)),
        builder: (context, AsyncSnapshot<bool> asyncSnapshot) {
          log.d("AsynDataSnapshot: ${asyncSnapshot.data}");
          if (asyncSnapshot.hasData) {
            bool isNewTenant = asyncSnapshot.data;
            if (isNewTenant) {
              return CreateEditProfile(tenantStatus: TenantStatus.GUEST);
            } else {
              return MainPage();
            }
          } else {
            return MySplashScreen(
              backgroundColor: Colors.white,
              loaderColor: Colors.yellow,
              image: Image.asset("assets/images/icon.jpg"),
              photoSize: 100.0,
            );
          }
        },
      ),
    );
  }

  Future<bool> checkIfInitialTenantExist(TenantDao tenantDao) async {
    var initialTenant = await tenantDao.tenantsGenerated().getSingle();
    log.d('the local tenant is .............................');

    if (initialTenant == null) {
      log.d('NOBODY');
      return true;
    } else {
      log.d(initialTenant.firstName);
      return false;
    }
  }
}

class MySplashScreen extends StatelessWidget {
  final Color backgroundColor;
  final double photoSize;
  final Image image;
  final Color loaderColor;

  MySplashScreen({
    this.backgroundColor,
    this.image,
    this.loaderColor,
    this.photoSize,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Container(
                        child: image,
                      ),
                      radius: photoSize,
                    ),
                  ],
                )),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(loaderColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
