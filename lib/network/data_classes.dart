import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'data_classes.g.dart';

abstract class BuiltTenant implements Built<BuiltTenant, BuiltTenantBuilder> {
  BuiltTenant._();

  factory BuiltTenant([updates(BuiltTenantBuilder b)]) = _$BuiltTenant;

  static Serializer<BuiltTenant> get serializer => _$builtTenantSerializer;
}

abstract class BuiltUnit implements Built<BuiltUnit, BuiltUnitBuilder> {
  BuiltUnit._();

  factory BuiltUnit([updates(BuiltUnitBuilder b)]) = _$BuiltUnit;

  static Serializer<BuiltUnit> get serializer => _$builtUnitSerializer;
}

abstract class BuiltPayment
    implements Built<BuiltPayment, BuiltPaymentBuilder> {
  BuiltPayment._();

  factory BuiltPayment([updates(BuiltPaymentBuilder b)]) = _$BuiltPayment;

  static Serializer<BuiltPayment> get serializer => _$builtPaymentSerializer;
}
