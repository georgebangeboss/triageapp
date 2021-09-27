import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/api/my_chopper_client.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/logger/log_printer.dart';
import 'package:rental_ui/tabs/main_page.dart';
import 'package:rental_ui/tabs/property_and_houses/houses_available.dart';
import 'package:rental_ui/tabs/sign_in_tab/create_and_edit_profile.dart';
import 'package:rental_ui/tabs/sign_in_tab/terms_and_conditions_tab.dart';

import 'api/chopper_api_services.dart';
import 'api/tenant_change_notifier.dart';
import 'constants/route_names.dart';
import 'moor/moor_db.dart';
import 'tabs/home_page_tab/widgets/my_rights.dart';
import 'tabs/home_page_tab/widgets/rules_book.dart';

const savedKey = "";
const savedSecret = "";

void main() {
  AppDatabase myDB = AppDatabase();
  HttpClient client = HttpClient(
    
  );
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (_) => MyChopperClient.client,
      ),
      Provider(
        create: (_) => client,
      ),
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
      ChangeNotifierProvider(
        create: (_) => TenantChangeNotifier(),
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
          myRights: (_) => MyRights(),
          rulesBook: (_) => RulesBook(),
          termsAndConditions: (_) => TermsAndConditionsTab(),
          houseListingPage: (_) => HousesAvailable(),
          createEditProfile: (_) => CreateEditProfile(),
          mainPage: (context) => MainPage(),
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
        debugShowCheckedModeBanner: true,
        home: MySplashScreen(
          backgroundColor: Colors.white,
          loaderColor: Colors.yellow,
          image: Image.asset("assets/images/icon.jpg"),
          photoSize: 100.0,
          navigateAfterFuture: checkIfInitialTenantExist(
              tenantDao: Provider.of<TenantDao>(context, listen: false),
              paymentDao: Provider.of<PaymentDao>(context, listen: false),
              unitDao: Provider.of<UnitDao>(context, listen: false),
              notificationDao:
                  Provider.of<NotificationDao>(context, listen: false),
              buildContext: context),
        ));
  }

  Future<dynamic> checkIfInitialTenantExist(
      {TenantDao tenantDao,
      UnitDao unitDao,
      NotificationDao notificationDao,
      PaymentDao paymentDao,
      BuildContext buildContext}) async {
    var initialTenant = await tenantDao.tenantsGenerated().getSingle();

    if (initialTenant == null) {
      Provider.of<TenantChangeNotifier>(buildContext, listen: false)
          .updateServiceId("guest");
      return '/createEditProfile';
    } else {
      try {
        //fetch from api
        var response = await TenantApiService.create(
                Provider.of<ChopperClient>(buildContext, listen: false))
            .getTenants("?id_number=eq.${initialTenant.idNumber}");
        var responseTenant = response.body.first;

        print(responseTenant.firstName);

        //write to db
        await tenantDao.updateTenant(initialTenant.copyWith(
          firstName: responseTenant.firstName,
          lastName: responseTenant.lastName,
          idNumber: responseTenant.idNumber,
          occupation: responseTenant.occupation,
          emailAddress: responseTenant.emailAdress,
          phoneNumber: responseTenant.telephoneNumber,
        ));
      } catch (e) {}
      return '/mainPage';
    }
  }
}

class MySplashScreen extends StatefulWidget {
  final Color backgroundColor;
  final double photoSize;
  final Image image;
  final Color loaderColor;
  final Future<dynamic> navigateAfterFuture;

  MySplashScreen({
    this.backgroundColor,
    this.image,
    this.loaderColor,
    this.photoSize,
    this.navigateAfterFuture,
  });

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    widget.navigateAfterFuture.then((navigateTo) {
      if (navigateTo is String) {
        if (navigateTo == createEditProfile) {
          Navigator.of(context)
              .pushReplacementNamed(navigateTo, arguments: TenantStatus.GUEST);
        } else if (navigateTo == mainPage) {
          Navigator.of(context).pushReplacementNamed(navigateTo);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
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
                        child: widget.image,
                      ),
                      radius: widget.photoSize,
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
                      valueColor:
                          AlwaysStoppedAnimation<Color>(widget.loaderColor),
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
