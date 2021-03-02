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

  setLastName(String value) {
    _lastName = value;
    notifyListeners();
  }

  setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  setHouseNumber(String value) {
    _houseNumber = value;
    notifyListeners();
  }

  setEmailAddress(String value) {
    _emailAddress = value;
    notifyListeners();
  }

  setIDNumber(String value) {
    _idNumber = value;
    notifyListeners();
  }

  setPropertyName(String value) {
    _propertyName = value;
    notifyListeners();
  }

  setPropertyLocation(String value) {
    _propertyLocation = value;
    notifyListeners();
  }

  setOccupation(String value) {
    _occupation = value;
    notifyListeners();
  }

  setRentBalance(double value) {
    _rentBalance = value;
    notifyListeners();
  }

  setMonthlyRent(double value) {
    _monthlyRent = value;
    notifyListeners();
  }

  setAllPayments(List<Payment> value) {
    _allPayments = value;
    notifyListeners();
  }
  setFirstName(String value) {
    _firstName = value;
    notifyListeners();
  }
}
