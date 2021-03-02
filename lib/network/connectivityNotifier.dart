import 'package:flutter/foundation.dart';

import 'package:connectivity/connectivity.dart';

class ConnectivityChangeNotifier extends ChangeNotifier {
  ConnectivityChangeNotifier() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      resultHandler(result);
    });
  }
  ConnectivityResult _connectivityResult = ConnectivityResult.none;
  ConnectivityResult get connectivity => _connectivityResult;
  void resultHandler(ConnectivityResult result) {
    _connectivityResult = result;
    notifyListeners();
  }

  void initialLoad() async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    resultHandler(connectivityResult);
  }
}
