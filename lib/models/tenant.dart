import 'package:flutter/foundation.dart';
import 'package:rental_ui/models/payment.dart';

class Tenant extends ChangeNotifier{
  String _firstName;
  String _lastName;
  String _phoneNumber;
  String _houseNumber;
  String _emailAddress;
  String _idNumber;
  String _propertyName;
  String _propertyLocation;
  String _occupation;
  double _rentBalance;
  double _monthlyRent;
  List<Payment> _allPayments;

  Tenant({firstName,
    monthlyRent,
    occupation,
    rentBalance,
    lastName,
    phoneNumber,
    houseNumber,
    emailAddress,
    allPayments,
    idNumber,
    propertyLocation,
    propertyName}){
    assert(firstName != null);
    assert(phoneNumber != null);
    assert(lastName != null);
    assert(idNumber != null);
    _firstName = firstName;
    _lastName = lastName;
    _monthlyRent=monthlyRent;
    _idNumber = idNumber;
    _rentBalance = rentBalance;
    _phoneNumber = phoneNumber;
    _allPayments = allPayments;
    _emailAddress = emailAddress;
    _propertyName = propertyName;
    _propertyLocation = propertyLocation;
    _occupation = occupation;
    _houseNumber = houseNumber;
  }
  void updateTenant(Tenant tenant){
    _firstName=tenant.firstName;
    _lastName=tenant.lastName;
    _phoneNumber=tenant.phoneNumber;
    _idNumber=tenant.idNumber;
    notifyListeners();
  }


  String get firstName => _firstName;

  String get lastName => _lastName;

  String get phoneNumber => _phoneNumber;

  String get houseNumber => _houseNumber;

  String get emailAddress => _emailAddress;

  String get idNumber => _idNumber;

  String get propertyName => _propertyName;

  String get propertyLocation => _propertyLocation;

  String get occupation => _occupation;

  double get rentBalance => _rentBalance;

  double get monthlyRent => _monthlyRent;

  List<Payment> get allPayments => _allPayments;

}
