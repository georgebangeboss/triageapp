import 'package:rental_ui/dummy_data/dummy_payments.dart';
import 'package:rental_ui/models/tenant.dart';

var dummyTenant = Tenant(
    firstName: 'Bange',
    lastName:'George',
    phoneNumber: '0769123105',
    houseNumber: 'C13',
    emailAddress: 'bangegeorgeogeto@gmail.com',
    idNumber: '321654987',
    rentBalance: 5000.00,
    monthlyRent: 15000.00,
    allPayments: dummyPaymentsList,
    propertyLocation: 'Juja',
    propertyName: 'Taraja Heights');
