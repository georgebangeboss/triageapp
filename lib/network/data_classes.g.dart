// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltTenant> _$builtTenantSerializer = new _$BuiltTenantSerializer();
Serializer<BuiltUnit> _$builtUnitSerializer = new _$BuiltUnitSerializer();
Serializer<BuiltPayment> _$builtPaymentSerializer =
    new _$BuiltPaymentSerializer();

class _$BuiltTenantSerializer implements StructuredSerializer<BuiltTenant> {
  @override
  final Iterable<Type> types = const [BuiltTenant, _$BuiltTenant];
  @override
  final String wireName = 'BuiltTenant';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltTenant object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  BuiltTenant deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BuiltTenantBuilder().build();
  }
}

class _$BuiltUnitSerializer implements StructuredSerializer<BuiltUnit> {
  @override
  final Iterable<Type> types = const [BuiltUnit, _$BuiltUnit];
  @override
  final String wireName = 'BuiltUnit';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltUnit object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  BuiltUnit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BuiltUnitBuilder().build();
  }
}

class _$BuiltPaymentSerializer implements StructuredSerializer<BuiltPayment> {
  @override
  final Iterable<Type> types = const [BuiltPayment, _$BuiltPayment];
  @override
  final String wireName = 'BuiltPayment';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltPayment object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  BuiltPayment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BuiltPaymentBuilder().build();
  }
}

class _$BuiltTenant extends BuiltTenant {
  factory _$BuiltTenant([void Function(BuiltTenantBuilder) updates]) =>
      (new BuiltTenantBuilder()..update(updates)).build();

  _$BuiltTenant._() : super._();

  @override
  BuiltTenant rebuild(void Function(BuiltTenantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTenantBuilder toBuilder() => new BuiltTenantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTenant;
  }

  @override
  int get hashCode {
    return 670222829;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BuiltTenant').toString();
  }
}

class BuiltTenantBuilder implements Builder<BuiltTenant, BuiltTenantBuilder> {
  _$BuiltTenant _$v;

  BuiltTenantBuilder();

  @override
  void replace(BuiltTenant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltTenant;
  }

  @override
  void update(void Function(BuiltTenantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTenant build() {
    final _$result = _$v ?? new _$BuiltTenant._();
    replace(_$result);
    return _$result;
  }
}

class _$BuiltUnit extends BuiltUnit {
  factory _$BuiltUnit([void Function(BuiltUnitBuilder) updates]) =>
      (new BuiltUnitBuilder()..update(updates)).build();

  _$BuiltUnit._() : super._();

  @override
  BuiltUnit rebuild(void Function(BuiltUnitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUnitBuilder toBuilder() => new BuiltUnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUnit;
  }

  @override
  int get hashCode {
    return 759710392;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BuiltUnit').toString();
  }
}

class BuiltUnitBuilder implements Builder<BuiltUnit, BuiltUnitBuilder> {
  _$BuiltUnit _$v;

  BuiltUnitBuilder();

  @override
  void replace(BuiltUnit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltUnit;
  }

  @override
  void update(void Function(BuiltUnitBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltUnit build() {
    final _$result = _$v ?? new _$BuiltUnit._();
    replace(_$result);
    return _$result;
  }
}

class _$BuiltPayment extends BuiltPayment {
  factory _$BuiltPayment([void Function(BuiltPaymentBuilder) updates]) =>
      (new BuiltPaymentBuilder()..update(updates)).build();

  _$BuiltPayment._() : super._();

  @override
  BuiltPayment rebuild(void Function(BuiltPaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPaymentBuilder toBuilder() => new BuiltPaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPayment;
  }

  @override
  int get hashCode {
    return 335598825;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BuiltPayment').toString();
  }
}

class BuiltPaymentBuilder
    implements Builder<BuiltPayment, BuiltPaymentBuilder> {
  _$BuiltPayment _$v;

  BuiltPaymentBuilder();

  @override
  void replace(BuiltPayment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltPayment;
  }

  @override
  void update(void Function(BuiltPaymentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPayment build() {
    final _$result = _$v ?? new _$BuiltPayment._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
