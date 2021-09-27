import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'data_classes.g.dart';

abstract class BuiltTenant implements Built<BuiltTenant, BuiltTenantBuilder> {
  @BuiltValueField(wireName: "id_number")
  @nullable
  int get idNumber;
  @BuiltValueField(wireName: "first_name")
  @nullable
  String get firstName;
  @BuiltValueField(wireName: "other_name")
  @nullable
  String get lastName;
  @BuiltValueField(wireName: "dob")
  @nullable
  String get dob;
  @BuiltValueField(wireName: "mobile_number")
  @nullable
  String get telephoneNumber;
  @BuiltValueField(wireName: "email")
  @nullable
  String get emailAdress;
  @BuiltValueField(wireName: "gender")
  @nullable
  String get gender;
  @BuiltValueField(wireName: "occupation")
  @nullable
  String get occupation;
  @BuiltValueField(wireName: "nok")
  @nullable
  String get nok;
  @BuiltValueField(wireName: "nok_mobile")
  @nullable
  String get nokMobile;
  @BuiltValueField(wireName: "nok_relationship")
  @nullable
  String get nokRelationship;
  @BuiltValueField(wireName: "balance")
  @nullable
  double get balance;
  @BuiltValueField(wireName: "account")
  @nullable
  double get account;
  @BuiltValueField(wireName: "property_id")
  @nullable
  int get propertyId;

  BuiltTenant._();

  factory BuiltTenant([updates(BuiltTenantBuilder b)]) = _$BuiltTenant;

  static Serializer<BuiltTenant> get serializer => _$builtTenantSerializer;
}

abstract class BuiltUnit implements Built<BuiltUnit, BuiltUnitBuilder> {
  @BuiltValueField(wireName: "id")
  @nullable
  int get id;
  @BuiltValueField(wireName: "unit_name")
  @nullable
  String get unitName;
  @BuiltValueField(wireName: "rent")
  @nullable
  double get rent;
  @BuiltValueField(wireName: "leaser_id")
  @nullable
  int get leaserId;
  @BuiltValueField(wireName: "propertyId")
  @nullable
  int get propertyId;
  @BuiltValueField(wireName: "type")
  @nullable
  String get unitType;

  BuiltUnit._();

  factory BuiltUnit([updates(BuiltUnitBuilder b)]) = _$BuiltUnit;

  static Serializer<BuiltUnit> get serializer => _$builtUnitSerializer;
}

abstract class BuiltPayment
    implements Built<BuiltPayment, BuiltPaymentBuilder> {
  @BuiltValueField(wireName: "reference")
  @nullable
  String get reference;
  @BuiltValueField(wireName: "amount")
  @nullable
  double get amount;
  @BuiltValueField(wireName: "unit_id")
  @nullable
  int get unitId;
  @BuiltValueField(wireName: "payer")
  @nullable
  String get payer;
  @BuiltValueField(wireName: "date")
  @nullable
  String get date;
  BuiltPayment._();

  factory BuiltPayment([updates(BuiltPaymentBuilder b)]) = _$BuiltPayment;

  static Serializer<BuiltPayment> get serializer => _$builtPaymentSerializer;
}

abstract class BuiltNotification
    implements Built<BuiltNotification, BuiltNotificationBuilder> {
  //TODO add fields for notification

  BuiltNotification._();

  factory BuiltNotification([updates(BuiltNotificationBuilder b)]) =
      _$BuiltNotification;

  static Serializer<BuiltNotification> get serializer =>
      _$builtNotificationSerializer;
}
