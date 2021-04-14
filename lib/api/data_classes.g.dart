// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltTenant> _$builtTenantSerializer = new _$BuiltTenantSerializer();
Serializer<BuiltUnit> _$builtUnitSerializer = new _$BuiltUnitSerializer();
Serializer<BuiltPayment> _$builtPaymentSerializer =
    new _$BuiltPaymentSerializer();
Serializer<BuiltNotification> _$builtNotificationSerializer =
    new _$BuiltNotificationSerializer();

class _$BuiltTenantSerializer implements StructuredSerializer<BuiltTenant> {
  @override
  final Iterable<Type> types = const [BuiltTenant, _$BuiltTenant];
  @override
  final String wireName = 'BuiltTenant';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltTenant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.idNumber;
    if (value != null) {
      result
        ..add('id_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('other_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telephoneNumber;
    if (value != null) {
      result
        ..add('mobile_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAdress;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.occupation;
    if (value != null) {
      result
        ..add('occupation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nok;
    if (value != null) {
      result
        ..add('nok')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nokMobile;
    if (value != null) {
      result
        ..add('nok_mobile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nokRelationShip;
    if (value != null) {
      result
        ..add('nok_relationship')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.balance;
    if (value != null) {
      result
        ..add('balance')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.account;
    if (value != null) {
      result
        ..add('account')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.propertyId;
    if (value != null) {
      result
        ..add('property_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
        case 'id_number':
          result.idNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'other_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile_number':
          result.telephoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
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
        case 'nok_mobile':
          result.nokMobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nok_relationship':
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
        case 'property_id':
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
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.unitName;
    if (value != null) {
      result
        ..add('unit_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rent;
    if (value != null) {
      result
        ..add('rent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.leaserId;
    if (value != null) {
      result
        ..add('leaser_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.propertyId;
    if (value != null) {
      result
        ..add('propertyId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.unitType;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
        case 'unit_name':
          result.unitName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rent':
          result.rent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'leaser_id':
          result.leaserId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'propertyId':
          result.propertyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.unitType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
    final result = <Object>[];
    Object value;
    value = object.reference;
    if (value != null) {
      result
        ..add('reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.unitId;
    if (value != null) {
      result
        ..add('unit_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.payer;
    if (value != null) {
      result
        ..add('payer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
        case 'unit_id':
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

class _$BuiltNotificationSerializer
    implements StructuredSerializer<BuiltNotification> {
  @override
  final Iterable<Type> types = const [BuiltNotification, _$BuiltNotification];
  @override
  final String wireName = 'BuiltNotification';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltNotification object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  BuiltNotification deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BuiltNotificationBuilder().build();
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
      : super._();

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
            idNumber: idNumber,
            firstName: firstName,
            lastName: lastName,
            dob: dob,
            telephoneNumber: telephoneNumber,
            emailAdress: emailAdress,
            gender: gender,
            occupation: occupation,
            nok: nok,
            nokMobile: nokMobile,
            nokRelationShip: nokRelationShip,
            balance: balance,
            account: account,
            propertyId: propertyId);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltUnit extends BuiltUnit {
  @override
  final int id;
  @override
  final String unitName;
  @override
  final double rent;
  @override
  final int leaserId;
  @override
  final int propertyId;
  @override
  final String unitType;

  factory _$BuiltUnit([void Function(BuiltUnitBuilder) updates]) =>
      (new BuiltUnitBuilder()..update(updates)).build();

  _$BuiltUnit._(
      {this.id,
      this.unitName,
      this.rent,
      this.leaserId,
      this.propertyId,
      this.unitType})
      : super._();

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
        unitName == other.unitName &&
        rent == other.rent &&
        leaserId == other.leaserId &&
        propertyId == other.propertyId &&
        unitType == other.unitType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), unitName.hashCode), rent.hashCode),
                leaserId.hashCode),
            propertyId.hashCode),
        unitType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUnit')
          ..add('id', id)
          ..add('unitName', unitName)
          ..add('rent', rent)
          ..add('leaserId', leaserId)
          ..add('propertyId', propertyId)
          ..add('unitType', unitType))
        .toString();
  }
}

class BuiltUnitBuilder implements Builder<BuiltUnit, BuiltUnitBuilder> {
  _$BuiltUnit _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _unitName;
  String get unitName => _$this._unitName;
  set unitName(String unitName) => _$this._unitName = unitName;

  double _rent;
  double get rent => _$this._rent;
  set rent(double rent) => _$this._rent = rent;

  int _leaserId;
  int get leaserId => _$this._leaserId;
  set leaserId(int leaserId) => _$this._leaserId = leaserId;

  int _propertyId;
  int get propertyId => _$this._propertyId;
  set propertyId(int propertyId) => _$this._propertyId = propertyId;

  String _unitType;
  String get unitType => _$this._unitType;
  set unitType(String unitType) => _$this._unitType = unitType;

  BuiltUnitBuilder();

  BuiltUnitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _unitName = $v.unitName;
      _rent = $v.rent;
      _leaserId = $v.leaserId;
      _propertyId = $v.propertyId;
      _unitType = $v.unitType;
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
            id: id,
            unitName: unitName,
            rent: rent,
            leaserId: leaserId,
            propertyId: propertyId,
            unitType: unitType);
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
      : super._();

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
            reference: reference,
            amount: amount,
            unitId: unitId,
            payer: payer,
            date: date);
    replace(_$result);
    return _$result;
  }
}

class _$BuiltNotification extends BuiltNotification {
  factory _$BuiltNotification(
          [void Function(BuiltNotificationBuilder) updates]) =>
      (new BuiltNotificationBuilder()..update(updates)).build();

  _$BuiltNotification._() : super._();

  @override
  BuiltNotification rebuild(void Function(BuiltNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltNotificationBuilder toBuilder() =>
      new BuiltNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltNotification;
  }

  @override
  int get hashCode {
    return 968522616;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BuiltNotification').toString();
  }
}

class BuiltNotificationBuilder
    implements Builder<BuiltNotification, BuiltNotificationBuilder> {
  _$BuiltNotification _$v;

  BuiltNotificationBuilder();

  @override
  void replace(BuiltNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltNotification;
  }

  @override
  void update(void Function(BuiltNotificationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltNotification build() {
    final _$result = _$v ?? new _$BuiltNotification._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
