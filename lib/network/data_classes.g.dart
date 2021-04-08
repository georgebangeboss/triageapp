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
    final result = <Object>[
      'idNumber',
      serializers.serialize(object.idNumber,
          specifiedType: const FullType(int)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'dob',
      serializers.serialize(object.dob, specifiedType: const FullType(String)),
      'telephoneNumber',
      serializers.serialize(object.telephoneNumber,
          specifiedType: const FullType(String)),
      'emailAdress',
      serializers.serialize(object.emailAdress,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
      'occupation',
      serializers.serialize(object.occupation,
          specifiedType: const FullType(String)),
      'nok',
      serializers.serialize(object.nok, specifiedType: const FullType(String)),
      'nokMobile',
      serializers.serialize(object.nokMobile,
          specifiedType: const FullType(String)),
      'nokRelationShip',
      serializers.serialize(object.nokRelationShip,
          specifiedType: const FullType(String)),
      'balance',
      serializers.serialize(object.balance, specifiedType: const FullType(int)),
      'account',
      serializers.serialize(object.account, specifiedType: const FullType(int)),
      'propertyId',
      serializers.serialize(object.propertyId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BuiltTenant deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltTenantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'idNumber':
          result.idNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'telephoneNumber':
          result.telephoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emailAdress':
          result.emailAdress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'occupation':
          result.occupation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nok':
          result.nok = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nokMobile':
          result.nokMobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nokRelationShip':
          result.nokRelationShip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'account':
          result.account = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'propertyId':
          result.propertyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
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
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'propertyId',
      serializers.serialize(object.propertyId,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BuiltUnit deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltUnitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'propertyId':
          result.propertyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
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
    final result = <Object>[
      'reference',
      serializers.serialize(object.reference,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(double)),
      'unitId',
      serializers.serialize(object.unitId, specifiedType: const FullType(int)),
      'payer',
      serializers.serialize(object.payer,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltPayment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPaymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'reference':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'unitId':
          result.unitId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'payer':
          result.payer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltTenant extends BuiltTenant {
  @override
  final int idNumber;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String dob;
  @override
  final String telephoneNumber;
  @override
  final String emailAdress;
  @override
  final String gender;
  @override
  final String occupation;
  @override
  final String nok;
  @override
  final String nokMobile;
  @override
  final String nokRelationShip;
  @override
  final int balance;
  @override
  final int account;
  @override
  final int propertyId;

  factory _$BuiltTenant([void Function(BuiltTenantBuilder) updates]) =>
      (new BuiltTenantBuilder()..update(updates)).build();

  _$BuiltTenant._(
      {this.idNumber,
      this.firstName,
      this.lastName,
      this.dob,
      this.telephoneNumber,
      this.emailAdress,
      this.gender,
      this.occupation,
      this.nok,
      this.nokMobile,
      this.nokRelationShip,
      this.balance,
      this.account,
      this.propertyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(idNumber, 'BuiltTenant', 'idNumber');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'BuiltTenant', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'BuiltTenant', 'lastName');
    BuiltValueNullFieldError.checkNotNull(dob, 'BuiltTenant', 'dob');
    BuiltValueNullFieldError.checkNotNull(
        telephoneNumber, 'BuiltTenant', 'telephoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        emailAdress, 'BuiltTenant', 'emailAdress');
    BuiltValueNullFieldError.checkNotNull(gender, 'BuiltTenant', 'gender');
    BuiltValueNullFieldError.checkNotNull(
        occupation, 'BuiltTenant', 'occupation');
    BuiltValueNullFieldError.checkNotNull(nok, 'BuiltTenant', 'nok');
    BuiltValueNullFieldError.checkNotNull(
        nokMobile, 'BuiltTenant', 'nokMobile');
    BuiltValueNullFieldError.checkNotNull(
        nokRelationShip, 'BuiltTenant', 'nokRelationShip');
    BuiltValueNullFieldError.checkNotNull(balance, 'BuiltTenant', 'balance');
    BuiltValueNullFieldError.checkNotNull(account, 'BuiltTenant', 'account');
    BuiltValueNullFieldError.checkNotNull(
        propertyId, 'BuiltTenant', 'propertyId');
  }

  @override
  BuiltTenant rebuild(void Function(BuiltTenantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTenantBuilder toBuilder() => new BuiltTenantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTenant &&
        idNumber == other.idNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        dob == other.dob &&
        telephoneNumber == other.telephoneNumber &&
        emailAdress == other.emailAdress &&
        gender == other.gender &&
        occupation == other.occupation &&
        nok == other.nok &&
        nokMobile == other.nokMobile &&
        nokRelationShip == other.nokRelationShip &&
        balance == other.balance &&
        account == other.account &&
        propertyId == other.propertyId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0,
                                                            idNumber.hashCode),
                                                        firstName.hashCode),
                                                    lastName.hashCode),
                                                dob.hashCode),
                                            telephoneNumber.hashCode),
                                        emailAdress.hashCode),
                                    gender.hashCode),
                                occupation.hashCode),
                            nok.hashCode),
                        nokMobile.hashCode),
                    nokRelationShip.hashCode),
                balance.hashCode),
            account.hashCode),
        propertyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTenant')
          ..add('idNumber', idNumber)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dob', dob)
          ..add('telephoneNumber', telephoneNumber)
          ..add('emailAdress', emailAdress)
          ..add('gender', gender)
          ..add('occupation', occupation)
          ..add('nok', nok)
          ..add('nokMobile', nokMobile)
          ..add('nokRelationShip', nokRelationShip)
          ..add('balance', balance)
          ..add('account', account)
          ..add('propertyId', propertyId))
        .toString();
  }
}

class BuiltTenantBuilder implements Builder<BuiltTenant, BuiltTenantBuilder> {
  _$BuiltTenant _$v;

  int _idNumber;
  int get idNumber => _$this._idNumber;
  set idNumber(int idNumber) => _$this._idNumber = idNumber;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _telephoneNumber;
  String get telephoneNumber => _$this._telephoneNumber;
  set telephoneNumber(String telephoneNumber) =>
      _$this._telephoneNumber = telephoneNumber;

  String _emailAdress;
  String get emailAdress => _$this._emailAdress;
  set emailAdress(String emailAdress) => _$this._emailAdress = emailAdress;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _occupation;
  String get occupation => _$this._occupation;
  set occupation(String occupation) => _$this._occupation = occupation;

  String _nok;
  String get nok => _$this._nok;
  set nok(String nok) => _$this._nok = nok;

  String _nokMobile;
  String get nokMobile => _$this._nokMobile;
  set nokMobile(String nokMobile) => _$this._nokMobile = nokMobile;

  String _nokRelationShip;
  String get nokRelationShip => _$this._nokRelationShip;
  set nokRelationShip(String nokRelationShip) =>
      _$this._nokRelationShip = nokRelationShip;

  int _balance;
  int get balance => _$this._balance;
  set balance(int balance) => _$this._balance = balance;

  int _account;
  int get account => _$this._account;
  set account(int account) => _$this._account = account;

  int _propertyId;
  int get propertyId => _$this._propertyId;
  set propertyId(int propertyId) => _$this._propertyId = propertyId;

  BuiltTenantBuilder();

  BuiltTenantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idNumber = $v.idNumber;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _dob = $v.dob;
      _telephoneNumber = $v.telephoneNumber;
      _emailAdress = $v.emailAdress;
      _gender = $v.gender;
      _occupation = $v.occupation;
      _nok = $v.nok;
      _nokMobile = $v.nokMobile;
      _nokRelationShip = $v.nokRelationShip;
      _balance = $v.balance;
      _account = $v.account;
      _propertyId = $v.propertyId;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ??
        new _$BuiltTenant._(
            idNumber: BuiltValueNullFieldError.checkNotNull(
                idNumber, 'BuiltTenant', 'idNumber'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, 'BuiltTenant', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'BuiltTenant', 'lastName'),
            dob: BuiltValueNullFieldError.checkNotNull(
                dob, 'BuiltTenant', 'dob'),
            telephoneNumber: BuiltValueNullFieldError.checkNotNull(
                telephoneNumber, 'BuiltTenant', 'telephoneNumber'),
            emailAdress: BuiltValueNullFieldError.checkNotNull(
                emailAdress, 'BuiltTenant', 'emailAdress'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, 'BuiltTenant', 'gender'),
            occupation: BuiltValueNullFieldError.checkNotNull(
                occupation, 'BuiltTenant', 'occupation'),
            nok: BuiltValueNullFieldError.checkNotNull(
                nok, 'BuiltTenant', 'nok'),
            nokMobile:
                BuiltValueNullFieldError.checkNotNull(nokMobile, 'BuiltTenant', 'nokMobile'),
            nokRelationShip: BuiltValueNullFieldError.checkNotNull(nokRelationShip, 'BuiltTenant', 'nokRelationShip'),
            balance: BuiltValueNullFieldError.checkNotNull(balance, 'BuiltTenant', 'balance'),
            account: BuiltValueNullFieldError.checkNotNull(account, 'BuiltTenant', 'account'),
            propertyId: BuiltValueNullFieldError.checkNotNull(propertyId, 'BuiltTenant', 'propertyId'));
    replace(_$result);
    return _$result;
  }
}

class _$BuiltUnit extends BuiltUnit {
  @override
  final int id;
  @override
  final String name;
  @override
  final int propertyId;

  factory _$BuiltUnit([void Function(BuiltUnitBuilder) updates]) =>
      (new BuiltUnitBuilder()..update(updates)).build();

  _$BuiltUnit._({this.id, this.name, this.propertyId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'BuiltUnit', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'BuiltUnit', 'name');
    BuiltValueNullFieldError.checkNotNull(
        propertyId, 'BuiltUnit', 'propertyId');
  }

  @override
  BuiltUnit rebuild(void Function(BuiltUnitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUnitBuilder toBuilder() => new BuiltUnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUnit &&
        id == other.id &&
        name == other.name &&
        propertyId == other.propertyId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), propertyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUnit')
          ..add('id', id)
          ..add('name', name)
          ..add('propertyId', propertyId))
        .toString();
  }
}

class BuiltUnitBuilder implements Builder<BuiltUnit, BuiltUnitBuilder> {
  _$BuiltUnit _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _propertyId;
  int get propertyId => _$this._propertyId;
  set propertyId(int propertyId) => _$this._propertyId = propertyId;

  BuiltUnitBuilder();

  BuiltUnitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _propertyId = $v.propertyId;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ??
        new _$BuiltUnit._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'BuiltUnit', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'BuiltUnit', 'name'),
            propertyId: BuiltValueNullFieldError.checkNotNull(
                propertyId, 'BuiltUnit', 'propertyId'));
    replace(_$result);
    return _$result;
  }
}

class _$BuiltPayment extends BuiltPayment {
  @override
  final String reference;
  @override
  final double amount;
  @override
  final int unitId;
  @override
  final String payer;
  @override
  final String date;

  factory _$BuiltPayment([void Function(BuiltPaymentBuilder) updates]) =>
      (new BuiltPaymentBuilder()..update(updates)).build();

  _$BuiltPayment._(
      {this.reference, this.amount, this.unitId, this.payer, this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reference, 'BuiltPayment', 'reference');
    BuiltValueNullFieldError.checkNotNull(amount, 'BuiltPayment', 'amount');
    BuiltValueNullFieldError.checkNotNull(unitId, 'BuiltPayment', 'unitId');
    BuiltValueNullFieldError.checkNotNull(payer, 'BuiltPayment', 'payer');
    BuiltValueNullFieldError.checkNotNull(date, 'BuiltPayment', 'date');
  }

  @override
  BuiltPayment rebuild(void Function(BuiltPaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPaymentBuilder toBuilder() => new BuiltPaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPayment &&
        reference == other.reference &&
        amount == other.amount &&
        unitId == other.unitId &&
        payer == other.payer &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, reference.hashCode), amount.hashCode),
                unitId.hashCode),
            payer.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltPayment')
          ..add('reference', reference)
          ..add('amount', amount)
          ..add('unitId', unitId)
          ..add('payer', payer)
          ..add('date', date))
        .toString();
  }
}

class BuiltPaymentBuilder
    implements Builder<BuiltPayment, BuiltPaymentBuilder> {
  _$BuiltPayment _$v;

  String _reference;
  String get reference => _$this._reference;
  set reference(String reference) => _$this._reference = reference;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  int _unitId;
  int get unitId => _$this._unitId;
  set unitId(int unitId) => _$this._unitId = unitId;

  String _payer;
  String get payer => _$this._payer;
  set payer(String payer) => _$this._payer = payer;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  BuiltPaymentBuilder();

  BuiltPaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reference = $v.reference;
      _amount = $v.amount;
      _unitId = $v.unitId;
      _payer = $v.payer;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ??
        new _$BuiltPayment._(
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'BuiltPayment', 'reference'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, 'BuiltPayment', 'amount'),
            unitId: BuiltValueNullFieldError.checkNotNull(
                unitId, 'BuiltPayment', 'unitId'),
            payer: BuiltValueNullFieldError.checkNotNull(
                payer, 'BuiltPayment', 'payer'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, 'BuiltPayment', 'date'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
