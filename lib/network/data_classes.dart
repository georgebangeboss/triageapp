import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'data_classes.g.dart';

abstract class BuiltTenant implements Built<BuiltTenant, BuiltTenantBuilder> {
  int get idNumber;
  String get firstName;
  String get lastName;
  String get dob;
  String get telephoneNumber;
  String get emailAdress;
  String get gender;
  String get occupation;
  String get nok;
  String get nokMobile;
  String get nokRelationShip;
  int get balance;
  int get account;
  int get propertyId;
  BuiltTenant._();

  factory BuiltTenant([updates(BuiltTenantBuilder b)]) = _$BuiltTenant;

  static Serializer<BuiltTenant> get serializer => _$builtTenantSerializer;
}

abstract class BuiltUnit implements Built<BuiltUnit, BuiltUnitBuilder> {
  int get id;
  String get name;
  int get propertyId;
  BuiltUnit._();

  factory BuiltUnit([updates(BuiltUnitBuilder b)]) = _$BuiltUnit;

  static Serializer<BuiltUnit> get serializer => _$builtUnitSerializer;
}

abstract class BuiltPayment
    implements Built<BuiltPayment, BuiltPaymentBuilder> {
  String get reference;
  double get amount;
  int get unitId;
  String get payer;
  String get date;
  BuiltPayment._();

  factory BuiltPayment([updates(BuiltPaymentBuilder b)]) = _$BuiltPayment;

  static Serializer<BuiltPayment> get serializer => _$builtPaymentSerializer;
}
