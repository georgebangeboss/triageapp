//import 'dart:async';
//
//import 'package:connectivity/connectivity.dart';
//
//class ConnectivityService{
//  StreamController<ConnectivityResult> streamController=StreamController<ConnectivityResult>();
//  ConnectivityService(){
//    Connectivity().onConnectivityChanged.listen((ConnectivityResult event) { streamController.add(event);});
//  }
//
//}