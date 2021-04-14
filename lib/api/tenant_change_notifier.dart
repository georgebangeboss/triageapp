import 'package:flutter/material.dart';

class TenantChangeNotifier extends ChangeNotifier {
  String serviceId;
  void updateServiceId(String serviceId) {
    this.serviceId = serviceId;
    notifyListeners();
  }
}
