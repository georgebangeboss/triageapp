//import 'dart:io';
// import 'dart:async';

// import 'package:connectivity/connectivity.dart';

// class ConnectionStatusSingleton {
//   static final ConnectionStatusSingleton _singleton =
//       ConnectionStatusSingleton._();

//   ConnectionStatusSingleton._();

//   static ConnectionStatusSingleton getInstance() => _singleton;

//   //This tracks the current connection status
//   bool hasConnection = false;

//   //This is how we'll allow subscribing to connection changes
//   StreamController _connectionChangeController = StreamController.broadcast();

//   //flutter_connectivity
//   final Connectivity _connectivity = Connectivity();

//   //Hook into flutter_connectivity's Stream to listen for changes
//   //And check the connection status out of the gate
//   void initialize() {
//     _connectivity.onConnectivityChanged.listen(_connectionChange);
//     checkConnection();
//   }

//   Stream get connectionChange => _connectionChangeController.stream;

//   //A clean up method to close our StreamController
//   //Because this is meant to exist through the entire application life cycle this isn't really an issue
//   void dispose() {
//     _connectionChangeController.close();
//   }

//   //flutter_connectivity's listener
//   void _connectionChange(ConnectivityResult result) {
//     checkConnection();
//   }

//   //The test to actually see if there is a connection
//   Future<bool> checkConnection() async {
//     bool previousConnection = hasConnection;
//     try {
//       final result = await InternetAddress.lookup('google.com');
//       if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//         hasConnection = true;
//       } else {
//         hasConnection = false;
//       }
//     } on SocketException catch (_) {
//       hasConnection = false;
//     }
//     //The connection status changed send out an update to all listeners
//     if (previousConnection != hasConnection) {
//       _connectionChangeController.add(hasConnection);
//     }
//     return hasConnection;
//   }
// }
