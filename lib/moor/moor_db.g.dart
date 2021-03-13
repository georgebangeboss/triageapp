// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Tenant extends DataClass implements Insertable<Tenant> {
  final String firstName;
  final String lastName;
  final String idNumber;
  final String emailAddress;
  final String phoneNumber;
  final String occupation;
  final String tenantId;
  final String tenantUnitId;
  Tenant(
      {@required this.firstName,
      @required this.lastName,
      @required this.idNumber,
      this.emailAddress,
      @required this.phoneNumber,
      this.occupation,
      @required this.tenantId,
      @required this.tenantUnitId});
  factory Tenant.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Tenant(
      firstName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name']),
      lastName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name']),
      idNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_number']),
      emailAddress: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_address']),
      phoneNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number']),
      occupation: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}occupation']),
      tenantId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      tenantUnitId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_unit_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || idNumber != null) {
      map['id_number'] = Variable<String>(idNumber);
    }
    if (!nullToAbsent || emailAddress != null) {
      map['email_address'] = Variable<String>(emailAddress);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || occupation != null) {
      map['occupation'] = Variable<String>(occupation);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String>(tenantId);
    }
    if (!nullToAbsent || tenantUnitId != null) {
      map['tenant_unit_id'] = Variable<String>(tenantUnitId);
    }
    return map;
  }

  TenantsCompanion toCompanion(bool nullToAbsent) {
    return TenantsCompanion(
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      idNumber: idNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(idNumber),
      emailAddress: emailAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(emailAddress),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      occupation: occupation == null && nullToAbsent
          ? const Value.absent()
          : Value(occupation),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      tenantUnitId: tenantUnitId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantUnitId),
    );
  }

  factory Tenant.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tenant(
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      idNumber: serializer.fromJson<String>(json['idNumber']),
      emailAddress: serializer.fromJson<String>(json['emailAddress']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      occupation: serializer.fromJson<String>(json['occupation']),
      tenantId: serializer.fromJson<String>(json['tenantId']),
      tenantUnitId: serializer.fromJson<String>(json['tenantUnitId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'idNumber': serializer.toJson<String>(idNumber),
      'emailAddress': serializer.toJson<String>(emailAddress),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'occupation': serializer.toJson<String>(occupation),
      'tenantId': serializer.toJson<String>(tenantId),
      'tenantUnitId': serializer.toJson<String>(tenantUnitId),
    };
  }

  Tenant copyWith(
          {String firstName,
          String lastName,
          String idNumber,
          String emailAddress,
          String phoneNumber,
          String occupation,
          String tenantId,
          String tenantUnitId}) =>
      Tenant(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        idNumber: idNumber ?? this.idNumber,
        emailAddress: emailAddress ?? this.emailAddress,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        occupation: occupation ?? this.occupation,
        tenantId: tenantId ?? this.tenantId,
        tenantUnitId: tenantUnitId ?? this.tenantUnitId,
      );
  @override
  String toString() {
    return (StringBuffer('Tenant(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('idNumber: $idNumber, ')
          ..write('emailAddress: $emailAddress, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('occupation: $occupation, ')
          ..write('tenantId: $tenantId, ')
          ..write('tenantUnitId: $tenantUnitId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      firstName.hashCode,
      $mrjc(
          lastName.hashCode,
          $mrjc(
              idNumber.hashCode,
              $mrjc(
                  emailAddress.hashCode,
                  $mrjc(
                      phoneNumber.hashCode,
                      $mrjc(
                          occupation.hashCode,
                          $mrjc(
                              tenantId.hashCode, tenantUnitId.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tenant &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.idNumber == this.idNumber &&
          other.emailAddress == this.emailAddress &&
          other.phoneNumber == this.phoneNumber &&
          other.occupation == this.occupation &&
          other.tenantId == this.tenantId &&
          other.tenantUnitId == this.tenantUnitId);
}

class TenantsCompanion extends UpdateCompanion<Tenant> {
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> idNumber;
  final Value<String> emailAddress;
  final Value<String> phoneNumber;
  final Value<String> occupation;
  final Value<String> tenantId;
  final Value<String> tenantUnitId;
  const TenantsCompanion({
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.idNumber = const Value.absent(),
    this.emailAddress = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.occupation = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.tenantUnitId = const Value.absent(),
  });
  TenantsCompanion.insert({
    @required String firstName,
    @required String lastName,
    @required String idNumber,
    this.emailAddress = const Value.absent(),
    @required String phoneNumber,
    this.occupation = const Value.absent(),
    @required String tenantId,
    @required String tenantUnitId,
  })  : firstName = Value(firstName),
        lastName = Value(lastName),
        idNumber = Value(idNumber),
        phoneNumber = Value(phoneNumber),
        tenantId = Value(tenantId),
        tenantUnitId = Value(tenantUnitId);
  static Insertable<Tenant> custom({
    Expression<String> firstName,
    Expression<String> lastName,
    Expression<String> idNumber,
    Expression<String> emailAddress,
    Expression<String> phoneNumber,
    Expression<String> occupation,
    Expression<String> tenantId,
    Expression<String> tenantUnitId,
  }) {
    return RawValuesInsertable({
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (idNumber != null) 'id_number': idNumber,
      if (emailAddress != null) 'email_address': emailAddress,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (occupation != null) 'occupation': occupation,
      if (tenantId != null) 'tenant_id': tenantId,
      if (tenantUnitId != null) 'tenant_unit_id': tenantUnitId,
    });
  }

  TenantsCompanion copyWith(
      {Value<String> firstName,
      Value<String> lastName,
      Value<String> idNumber,
      Value<String> emailAddress,
      Value<String> phoneNumber,
      Value<String> occupation,
      Value<String> tenantId,
      Value<String> tenantUnitId}) {
    return TenantsCompanion(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      idNumber: idNumber ?? this.idNumber,
      emailAddress: emailAddress ?? this.emailAddress,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      occupation: occupation ?? this.occupation,
      tenantId: tenantId ?? this.tenantId,
      tenantUnitId: tenantUnitId ?? this.tenantUnitId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (idNumber.present) {
      map['id_number'] = Variable<String>(idNumber.value);
    }
    if (emailAddress.present) {
      map['email_address'] = Variable<String>(emailAddress.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (occupation.present) {
      map['occupation'] = Variable<String>(occupation.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String>(tenantId.value);
    }
    if (tenantUnitId.present) {
      map['tenant_unit_id'] = Variable<String>(tenantUnitId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TenantsCompanion(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('idNumber: $idNumber, ')
          ..write('emailAddress: $emailAddress, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('occupation: $occupation, ')
          ..write('tenantId: $tenantId, ')
          ..write('tenantUnitId: $tenantUnitId')
          ..write(')'))
        .toString();
  }
}

class $TenantsTable extends Tenants with TableInfo<$TenantsTable, Tenant> {
  final GeneratedDatabase _db;
  final String _alias;
  $TenantsTable(this._db, [this._alias]);
  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  GeneratedTextColumn _firstName;
  @override
  GeneratedTextColumn get firstName => _firstName ??= _constructFirstName();
  GeneratedTextColumn _constructFirstName() {
    return GeneratedTextColumn(
      'first_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  GeneratedTextColumn _lastName;
  @override
  GeneratedTextColumn get lastName => _lastName ??= _constructLastName();
  GeneratedTextColumn _constructLastName() {
    return GeneratedTextColumn(
      'last_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idNumberMeta = const VerificationMeta('idNumber');
  GeneratedTextColumn _idNumber;
  @override
  GeneratedTextColumn get idNumber => _idNumber ??= _constructIdNumber();
  GeneratedTextColumn _constructIdNumber() {
    return GeneratedTextColumn(
      'id_number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _emailAddressMeta =
      const VerificationMeta('emailAddress');
  GeneratedTextColumn _emailAddress;
  @override
  GeneratedTextColumn get emailAddress =>
      _emailAddress ??= _constructEmailAddress();
  GeneratedTextColumn _constructEmailAddress() {
    return GeneratedTextColumn(
      'email_address',
      $tableName,
      true,
    );
  }

  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  GeneratedTextColumn _phoneNumber;
  @override
  GeneratedTextColumn get phoneNumber =>
      _phoneNumber ??= _constructPhoneNumber();
  GeneratedTextColumn _constructPhoneNumber() {
    return GeneratedTextColumn(
      'phone_number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _occupationMeta = const VerificationMeta('occupation');
  GeneratedTextColumn _occupation;
  @override
  GeneratedTextColumn get occupation => _occupation ??= _constructOccupation();
  GeneratedTextColumn _constructOccupation() {
    return GeneratedTextColumn(
      'occupation',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  GeneratedTextColumn _tenantId;
  @override
  GeneratedTextColumn get tenantId => _tenantId ??= _constructTenantId();
  GeneratedTextColumn _constructTenantId() {
    return GeneratedTextColumn(
      'tenant_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tenantUnitIdMeta =
      const VerificationMeta('tenantUnitId');
  GeneratedTextColumn _tenantUnitId;
  @override
  GeneratedTextColumn get tenantUnitId =>
      _tenantUnitId ??= _constructTenantUnitId();
  GeneratedTextColumn _constructTenantUnitId() {
    return GeneratedTextColumn(
      'tenant_unit_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        firstName,
        lastName,
        idNumber,
        emailAddress,
        phoneNumber,
        occupation,
        tenantId,
        tenantUnitId
      ];
  @override
  $TenantsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tenants';
  @override
  final String actualTableName = 'tenants';
  @override
  VerificationContext validateIntegrity(Insertable<Tenant> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name'], _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name'], _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('id_number')) {
      context.handle(_idNumberMeta,
          idNumber.isAcceptableOrUnknown(data['id_number'], _idNumberMeta));
    } else if (isInserting) {
      context.missing(_idNumberMeta);
    }
    if (data.containsKey('email_address')) {
      context.handle(
          _emailAddressMeta,
          emailAddress.isAcceptableOrUnknown(
              data['email_address'], _emailAddressMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number'], _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('occupation')) {
      context.handle(
          _occupationMeta,
          occupation.isAcceptableOrUnknown(
              data['occupation'], _occupationMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id'], _tenantIdMeta));
    } else if (isInserting) {
      context.missing(_tenantIdMeta);
    }
    if (data.containsKey('tenant_unit_id')) {
      context.handle(
          _tenantUnitIdMeta,
          tenantUnitId.isAcceptableOrUnknown(
              data['tenant_unit_id'], _tenantUnitIdMeta));
    } else if (isInserting) {
      context.missing(_tenantUnitIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tenantId};
  @override
  Tenant map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tenant.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TenantsTable createAlias(String alias) {
    return $TenantsTable(_db, alias);
  }
}

class Unit extends DataClass implements Insertable<Unit> {
  final String unitId;
  final String apartmentName;
  final String estateName;
  final String managerTelephone;
  final double rentBilling;
  Unit(
      {@required this.unitId,
      @required this.apartmentName,
      this.estateName,
      @required this.managerTelephone,
      @required this.rentBilling});
  factory Unit.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Unit(
      unitId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}unit_id']),
      apartmentName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}apartment_name']),
      estateName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}estate_name']),
      managerTelephone: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}manager_telephone']),
      rentBilling: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}rent_billing']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || unitId != null) {
      map['unit_id'] = Variable<String>(unitId);
    }
    if (!nullToAbsent || apartmentName != null) {
      map['apartment_name'] = Variable<String>(apartmentName);
    }
    if (!nullToAbsent || estateName != null) {
      map['estate_name'] = Variable<String>(estateName);
    }
    if (!nullToAbsent || managerTelephone != null) {
      map['manager_telephone'] = Variable<String>(managerTelephone);
    }
    if (!nullToAbsent || rentBilling != null) {
      map['rent_billing'] = Variable<double>(rentBilling);
    }
    return map;
  }

  UnitsCompanion toCompanion(bool nullToAbsent) {
    return UnitsCompanion(
      unitId:
          unitId == null && nullToAbsent ? const Value.absent() : Value(unitId),
      apartmentName: apartmentName == null && nullToAbsent
          ? const Value.absent()
          : Value(apartmentName),
      estateName: estateName == null && nullToAbsent
          ? const Value.absent()
          : Value(estateName),
      managerTelephone: managerTelephone == null && nullToAbsent
          ? const Value.absent()
          : Value(managerTelephone),
      rentBilling: rentBilling == null && nullToAbsent
          ? const Value.absent()
          : Value(rentBilling),
    );
  }

  factory Unit.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Unit(
      unitId: serializer.fromJson<String>(json['unitId']),
      apartmentName: serializer.fromJson<String>(json['apartmentName']),
      estateName: serializer.fromJson<String>(json['estateName']),
      managerTelephone: serializer.fromJson<String>(json['managerTelephone']),
      rentBilling: serializer.fromJson<double>(json['rentBilling']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'unitId': serializer.toJson<String>(unitId),
      'apartmentName': serializer.toJson<String>(apartmentName),
      'estateName': serializer.toJson<String>(estateName),
      'managerTelephone': serializer.toJson<String>(managerTelephone),
      'rentBilling': serializer.toJson<double>(rentBilling),
    };
  }

  Unit copyWith(
          {String unitId,
          String apartmentName,
          String estateName,
          String managerTelephone,
          double rentBilling}) =>
      Unit(
        unitId: unitId ?? this.unitId,
        apartmentName: apartmentName ?? this.apartmentName,
        estateName: estateName ?? this.estateName,
        managerTelephone: managerTelephone ?? this.managerTelephone,
        rentBilling: rentBilling ?? this.rentBilling,
      );
  @override
  String toString() {
    return (StringBuffer('Unit(')
          ..write('unitId: $unitId, ')
          ..write('apartmentName: $apartmentName, ')
          ..write('estateName: $estateName, ')
          ..write('managerTelephone: $managerTelephone, ')
          ..write('rentBilling: $rentBilling')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      unitId.hashCode,
      $mrjc(
          apartmentName.hashCode,
          $mrjc(estateName.hashCode,
              $mrjc(managerTelephone.hashCode, rentBilling.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Unit &&
          other.unitId == this.unitId &&
          other.apartmentName == this.apartmentName &&
          other.estateName == this.estateName &&
          other.managerTelephone == this.managerTelephone &&
          other.rentBilling == this.rentBilling);
}

class UnitsCompanion extends UpdateCompanion<Unit> {
  final Value<String> unitId;
  final Value<String> apartmentName;
  final Value<String> estateName;
  final Value<String> managerTelephone;
  final Value<double> rentBilling;
  const UnitsCompanion({
    this.unitId = const Value.absent(),
    this.apartmentName = const Value.absent(),
    this.estateName = const Value.absent(),
    this.managerTelephone = const Value.absent(),
    this.rentBilling = const Value.absent(),
  });
  UnitsCompanion.insert({
    @required String unitId,
    @required String apartmentName,
    this.estateName = const Value.absent(),
    @required String managerTelephone,
    @required double rentBilling,
  })  : unitId = Value(unitId),
        apartmentName = Value(apartmentName),
        managerTelephone = Value(managerTelephone),
        rentBilling = Value(rentBilling);
  static Insertable<Unit> custom({
    Expression<String> unitId,
    Expression<String> apartmentName,
    Expression<String> estateName,
    Expression<String> managerTelephone,
    Expression<double> rentBilling,
  }) {
    return RawValuesInsertable({
      if (unitId != null) 'unit_id': unitId,
      if (apartmentName != null) 'apartment_name': apartmentName,
      if (estateName != null) 'estate_name': estateName,
      if (managerTelephone != null) 'manager_telephone': managerTelephone,
      if (rentBilling != null) 'rent_billing': rentBilling,
    });
  }

  UnitsCompanion copyWith(
      {Value<String> unitId,
      Value<String> apartmentName,
      Value<String> estateName,
      Value<String> managerTelephone,
      Value<double> rentBilling}) {
    return UnitsCompanion(
      unitId: unitId ?? this.unitId,
      apartmentName: apartmentName ?? this.apartmentName,
      estateName: estateName ?? this.estateName,
      managerTelephone: managerTelephone ?? this.managerTelephone,
      rentBilling: rentBilling ?? this.rentBilling,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (apartmentName.present) {
      map['apartment_name'] = Variable<String>(apartmentName.value);
    }
    if (estateName.present) {
      map['estate_name'] = Variable<String>(estateName.value);
    }
    if (managerTelephone.present) {
      map['manager_telephone'] = Variable<String>(managerTelephone.value);
    }
    if (rentBilling.present) {
      map['rent_billing'] = Variable<double>(rentBilling.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitsCompanion(')
          ..write('unitId: $unitId, ')
          ..write('apartmentName: $apartmentName, ')
          ..write('estateName: $estateName, ')
          ..write('managerTelephone: $managerTelephone, ')
          ..write('rentBilling: $rentBilling')
          ..write(')'))
        .toString();
  }
}

class $UnitsTable extends Units with TableInfo<$UnitsTable, Unit> {
  final GeneratedDatabase _db;
  final String _alias;
  $UnitsTable(this._db, [this._alias]);
  final VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  GeneratedTextColumn _unitId;
  @override
  GeneratedTextColumn get unitId => _unitId ??= _constructUnitId();
  GeneratedTextColumn _constructUnitId() {
    return GeneratedTextColumn(
      'unit_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _apartmentNameMeta =
      const VerificationMeta('apartmentName');
  GeneratedTextColumn _apartmentName;
  @override
  GeneratedTextColumn get apartmentName =>
      _apartmentName ??= _constructApartmentName();
  GeneratedTextColumn _constructApartmentName() {
    return GeneratedTextColumn(
      'apartment_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _estateNameMeta = const VerificationMeta('estateName');
  GeneratedTextColumn _estateName;
  @override
  GeneratedTextColumn get estateName => _estateName ??= _constructEstateName();
  GeneratedTextColumn _constructEstateName() {
    return GeneratedTextColumn(
      'estate_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _managerTelephoneMeta =
      const VerificationMeta('managerTelephone');
  GeneratedTextColumn _managerTelephone;
  @override
  GeneratedTextColumn get managerTelephone =>
      _managerTelephone ??= _constructManagerTelephone();
  GeneratedTextColumn _constructManagerTelephone() {
    return GeneratedTextColumn(
      'manager_telephone',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rentBillingMeta =
      const VerificationMeta('rentBilling');
  GeneratedRealColumn _rentBilling;
  @override
  GeneratedRealColumn get rentBilling =>
      _rentBilling ??= _constructRentBilling();
  GeneratedRealColumn _constructRentBilling() {
    return GeneratedRealColumn(
      'rent_billing',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [unitId, apartmentName, estateName, managerTelephone, rentBilling];
  @override
  $UnitsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'units';
  @override
  final String actualTableName = 'units';
  @override
  VerificationContext validateIntegrity(Insertable<Unit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id'], _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('apartment_name')) {
      context.handle(
          _apartmentNameMeta,
          apartmentName.isAcceptableOrUnknown(
              data['apartment_name'], _apartmentNameMeta));
    } else if (isInserting) {
      context.missing(_apartmentNameMeta);
    }
    if (data.containsKey('estate_name')) {
      context.handle(
          _estateNameMeta,
          estateName.isAcceptableOrUnknown(
              data['estate_name'], _estateNameMeta));
    }
    if (data.containsKey('manager_telephone')) {
      context.handle(
          _managerTelephoneMeta,
          managerTelephone.isAcceptableOrUnknown(
              data['manager_telephone'], _managerTelephoneMeta));
    } else if (isInserting) {
      context.missing(_managerTelephoneMeta);
    }
    if (data.containsKey('rent_billing')) {
      context.handle(
          _rentBillingMeta,
          rentBilling.isAcceptableOrUnknown(
              data['rent_billing'], _rentBillingMeta));
    } else if (isInserting) {
      context.missing(_rentBillingMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {unitId};
  @override
  Unit map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Unit.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UnitsTable createAlias(String alias) {
    return $UnitsTable(_db, alias);
  }
}

class Payment extends DataClass implements Insertable<Payment> {
  final String dateAndTime;
  final double amountPaid;
  final double amountDue;
  final String transactionCode;
  final String transactionProvider;
  final int paymentID;
  Payment(
      {@required this.dateAndTime,
      @required this.amountPaid,
      @required this.amountDue,
      this.transactionCode,
      this.transactionProvider,
      @required this.paymentID});
  factory Payment.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final intType = db.typeSystem.forDartType<int>();
    return Payment(
      dateAndTime: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_and_time']),
      amountPaid: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}amount_paid']),
      amountDue: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}amount_due']),
      transactionCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}transaction_code']),
      transactionProvider: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}transaction_provider']),
      paymentID: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}payment_i_d']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || dateAndTime != null) {
      map['date_and_time'] = Variable<String>(dateAndTime);
    }
    if (!nullToAbsent || amountPaid != null) {
      map['amount_paid'] = Variable<double>(amountPaid);
    }
    if (!nullToAbsent || amountDue != null) {
      map['amount_due'] = Variable<double>(amountDue);
    }
    if (!nullToAbsent || transactionCode != null) {
      map['transaction_code'] = Variable<String>(transactionCode);
    }
    if (!nullToAbsent || transactionProvider != null) {
      map['transaction_provider'] = Variable<String>(transactionProvider);
    }
    if (!nullToAbsent || paymentID != null) {
      map['payment_i_d'] = Variable<int>(paymentID);
    }
    return map;
  }

  PaymentsCompanion toCompanion(bool nullToAbsent) {
    return PaymentsCompanion(
      dateAndTime: dateAndTime == null && nullToAbsent
          ? const Value.absent()
          : Value(dateAndTime),
      amountPaid: amountPaid == null && nullToAbsent
          ? const Value.absent()
          : Value(amountPaid),
      amountDue: amountDue == null && nullToAbsent
          ? const Value.absent()
          : Value(amountDue),
      transactionCode: transactionCode == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionCode),
      transactionProvider: transactionProvider == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionProvider),
      paymentID: paymentID == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentID),
    );
  }

  factory Payment.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Payment(
      dateAndTime: serializer.fromJson<String>(json['dateAndTime']),
      amountPaid: serializer.fromJson<double>(json['amountPaid']),
      amountDue: serializer.fromJson<double>(json['amountDue']),
      transactionCode: serializer.fromJson<String>(json['transactionCode']),
      transactionProvider:
          serializer.fromJson<String>(json['transactionProvider']),
      paymentID: serializer.fromJson<int>(json['paymentID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'dateAndTime': serializer.toJson<String>(dateAndTime),
      'amountPaid': serializer.toJson<double>(amountPaid),
      'amountDue': serializer.toJson<double>(amountDue),
      'transactionCode': serializer.toJson<String>(transactionCode),
      'transactionProvider': serializer.toJson<String>(transactionProvider),
      'paymentID': serializer.toJson<int>(paymentID),
    };
  }

  Payment copyWith(
          {String dateAndTime,
          double amountPaid,
          double amountDue,
          String transactionCode,
          String transactionProvider,
          int paymentID}) =>
      Payment(
        dateAndTime: dateAndTime ?? this.dateAndTime,
        amountPaid: amountPaid ?? this.amountPaid,
        amountDue: amountDue ?? this.amountDue,
        transactionCode: transactionCode ?? this.transactionCode,
        transactionProvider: transactionProvider ?? this.transactionProvider,
        paymentID: paymentID ?? this.paymentID,
      );
  @override
  String toString() {
    return (StringBuffer('Payment(')
          ..write('dateAndTime: $dateAndTime, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('amountDue: $amountDue, ')
          ..write('transactionCode: $transactionCode, ')
          ..write('transactionProvider: $transactionProvider, ')
          ..write('paymentID: $paymentID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      dateAndTime.hashCode,
      $mrjc(
          amountPaid.hashCode,
          $mrjc(
              amountDue.hashCode,
              $mrjc(transactionCode.hashCode,
                  $mrjc(transactionProvider.hashCode, paymentID.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Payment &&
          other.dateAndTime == this.dateAndTime &&
          other.amountPaid == this.amountPaid &&
          other.amountDue == this.amountDue &&
          other.transactionCode == this.transactionCode &&
          other.transactionProvider == this.transactionProvider &&
          other.paymentID == this.paymentID);
}

class PaymentsCompanion extends UpdateCompanion<Payment> {
  final Value<String> dateAndTime;
  final Value<double> amountPaid;
  final Value<double> amountDue;
  final Value<String> transactionCode;
  final Value<String> transactionProvider;
  final Value<int> paymentID;
  const PaymentsCompanion({
    this.dateAndTime = const Value.absent(),
    this.amountPaid = const Value.absent(),
    this.amountDue = const Value.absent(),
    this.transactionCode = const Value.absent(),
    this.transactionProvider = const Value.absent(),
    this.paymentID = const Value.absent(),
  });
  PaymentsCompanion.insert({
    @required String dateAndTime,
    @required double amountPaid,
    @required double amountDue,
    this.transactionCode = const Value.absent(),
    this.transactionProvider = const Value.absent(),
    this.paymentID = const Value.absent(),
  })  : dateAndTime = Value(dateAndTime),
        amountPaid = Value(amountPaid),
        amountDue = Value(amountDue);
  static Insertable<Payment> custom({
    Expression<String> dateAndTime,
    Expression<double> amountPaid,
    Expression<double> amountDue,
    Expression<String> transactionCode,
    Expression<String> transactionProvider,
    Expression<int> paymentID,
  }) {
    return RawValuesInsertable({
      if (dateAndTime != null) 'date_and_time': dateAndTime,
      if (amountPaid != null) 'amount_paid': amountPaid,
      if (amountDue != null) 'amount_due': amountDue,
      if (transactionCode != null) 'transaction_code': transactionCode,
      if (transactionProvider != null)
        'transaction_provider': transactionProvider,
      if (paymentID != null) 'payment_i_d': paymentID,
    });
  }

  PaymentsCompanion copyWith(
      {Value<String> dateAndTime,
      Value<double> amountPaid,
      Value<double> amountDue,
      Value<String> transactionCode,
      Value<String> transactionProvider,
      Value<int> paymentID}) {
    return PaymentsCompanion(
      dateAndTime: dateAndTime ?? this.dateAndTime,
      amountPaid: amountPaid ?? this.amountPaid,
      amountDue: amountDue ?? this.amountDue,
      transactionCode: transactionCode ?? this.transactionCode,
      transactionProvider: transactionProvider ?? this.transactionProvider,
      paymentID: paymentID ?? this.paymentID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (dateAndTime.present) {
      map['date_and_time'] = Variable<String>(dateAndTime.value);
    }
    if (amountPaid.present) {
      map['amount_paid'] = Variable<double>(amountPaid.value);
    }
    if (amountDue.present) {
      map['amount_due'] = Variable<double>(amountDue.value);
    }
    if (transactionCode.present) {
      map['transaction_code'] = Variable<String>(transactionCode.value);
    }
    if (transactionProvider.present) {
      map['transaction_provider'] = Variable<String>(transactionProvider.value);
    }
    if (paymentID.present) {
      map['payment_i_d'] = Variable<int>(paymentID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsCompanion(')
          ..write('dateAndTime: $dateAndTime, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('amountDue: $amountDue, ')
          ..write('transactionCode: $transactionCode, ')
          ..write('transactionProvider: $transactionProvider, ')
          ..write('paymentID: $paymentID')
          ..write(')'))
        .toString();
  }
}

class $PaymentsTable extends Payments with TableInfo<$PaymentsTable, Payment> {
  final GeneratedDatabase _db;
  final String _alias;
  $PaymentsTable(this._db, [this._alias]);
  final VerificationMeta _dateAndTimeMeta =
      const VerificationMeta('dateAndTime');
  GeneratedTextColumn _dateAndTime;
  @override
  GeneratedTextColumn get dateAndTime =>
      _dateAndTime ??= _constructDateAndTime();
  GeneratedTextColumn _constructDateAndTime() {
    return GeneratedTextColumn(
      'date_and_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _amountPaidMeta = const VerificationMeta('amountPaid');
  GeneratedRealColumn _amountPaid;
  @override
  GeneratedRealColumn get amountPaid => _amountPaid ??= _constructAmountPaid();
  GeneratedRealColumn _constructAmountPaid() {
    return GeneratedRealColumn(
      'amount_paid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _amountDueMeta = const VerificationMeta('amountDue');
  GeneratedRealColumn _amountDue;
  @override
  GeneratedRealColumn get amountDue => _amountDue ??= _constructAmountDue();
  GeneratedRealColumn _constructAmountDue() {
    return GeneratedRealColumn(
      'amount_due',
      $tableName,
      false,
    );
  }

  final VerificationMeta _transactionCodeMeta =
      const VerificationMeta('transactionCode');
  GeneratedTextColumn _transactionCode;
  @override
  GeneratedTextColumn get transactionCode =>
      _transactionCode ??= _constructTransactionCode();
  GeneratedTextColumn _constructTransactionCode() {
    return GeneratedTextColumn(
      'transaction_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _transactionProviderMeta =
      const VerificationMeta('transactionProvider');
  GeneratedTextColumn _transactionProvider;
  @override
  GeneratedTextColumn get transactionProvider =>
      _transactionProvider ??= _constructTransactionProvider();
  GeneratedTextColumn _constructTransactionProvider() {
    return GeneratedTextColumn(
      'transaction_provider',
      $tableName,
      true,
    );
  }

  final VerificationMeta _paymentIDMeta = const VerificationMeta('paymentID');
  GeneratedIntColumn _paymentID;
  @override
  GeneratedIntColumn get paymentID => _paymentID ??= _constructPaymentID();
  GeneratedIntColumn _constructPaymentID() {
    return GeneratedIntColumn('payment_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  @override
  List<GeneratedColumn> get $columns => [
        dateAndTime,
        amountPaid,
        amountDue,
        transactionCode,
        transactionProvider,
        paymentID
      ];
  @override
  $PaymentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'payments';
  @override
  final String actualTableName = 'payments';
  @override
  VerificationContext validateIntegrity(Insertable<Payment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date_and_time')) {
      context.handle(
          _dateAndTimeMeta,
          dateAndTime.isAcceptableOrUnknown(
              data['date_and_time'], _dateAndTimeMeta));
    } else if (isInserting) {
      context.missing(_dateAndTimeMeta);
    }
    if (data.containsKey('amount_paid')) {
      context.handle(
          _amountPaidMeta,
          amountPaid.isAcceptableOrUnknown(
              data['amount_paid'], _amountPaidMeta));
    } else if (isInserting) {
      context.missing(_amountPaidMeta);
    }
    if (data.containsKey('amount_due')) {
      context.handle(_amountDueMeta,
          amountDue.isAcceptableOrUnknown(data['amount_due'], _amountDueMeta));
    } else if (isInserting) {
      context.missing(_amountDueMeta);
    }
    if (data.containsKey('transaction_code')) {
      context.handle(
          _transactionCodeMeta,
          transactionCode.isAcceptableOrUnknown(
              data['transaction_code'], _transactionCodeMeta));
    }
    if (data.containsKey('transaction_provider')) {
      context.handle(
          _transactionProviderMeta,
          transactionProvider.isAcceptableOrUnknown(
              data['transaction_provider'], _transactionProviderMeta));
    }
    if (data.containsKey('payment_i_d')) {
      context.handle(_paymentIDMeta,
          paymentID.isAcceptableOrUnknown(data['payment_i_d'], _paymentIDMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {paymentID};
  @override
  Payment map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Payment.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PaymentsTable createAlias(String alias) {
    return $PaymentsTable(_db, alias);
  }
}

class Notification extends DataClass implements Insertable<Notification> {
  final String dateAndTime;
  final int notificationID;
  Notification({@required this.dateAndTime, @required this.notificationID});
  factory Notification.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return Notification(
      dateAndTime: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_and_time']),
      notificationID: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}notification_i_d']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || dateAndTime != null) {
      map['date_and_time'] = Variable<String>(dateAndTime);
    }
    if (!nullToAbsent || notificationID != null) {
      map['notification_i_d'] = Variable<int>(notificationID);
    }
    return map;
  }

  NotificationsCompanion toCompanion(bool nullToAbsent) {
    return NotificationsCompanion(
      dateAndTime: dateAndTime == null && nullToAbsent
          ? const Value.absent()
          : Value(dateAndTime),
      notificationID: notificationID == null && nullToAbsent
          ? const Value.absent()
          : Value(notificationID),
    );
  }

  factory Notification.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Notification(
      dateAndTime: serializer.fromJson<String>(json['dateAndTime']),
      notificationID: serializer.fromJson<int>(json['notificationID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'dateAndTime': serializer.toJson<String>(dateAndTime),
      'notificationID': serializer.toJson<int>(notificationID),
    };
  }

  Notification copyWith({String dateAndTime, int notificationID}) =>
      Notification(
        dateAndTime: dateAndTime ?? this.dateAndTime,
        notificationID: notificationID ?? this.notificationID,
      );
  @override
  String toString() {
    return (StringBuffer('Notification(')
          ..write('dateAndTime: $dateAndTime, ')
          ..write('notificationID: $notificationID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(dateAndTime.hashCode, notificationID.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Notification &&
          other.dateAndTime == this.dateAndTime &&
          other.notificationID == this.notificationID);
}

class NotificationsCompanion extends UpdateCompanion<Notification> {
  final Value<String> dateAndTime;
  final Value<int> notificationID;
  const NotificationsCompanion({
    this.dateAndTime = const Value.absent(),
    this.notificationID = const Value.absent(),
  });
  NotificationsCompanion.insert({
    @required String dateAndTime,
    this.notificationID = const Value.absent(),
  }) : dateAndTime = Value(dateAndTime);
  static Insertable<Notification> custom({
    Expression<String> dateAndTime,
    Expression<int> notificationID,
  }) {
    return RawValuesInsertable({
      if (dateAndTime != null) 'date_and_time': dateAndTime,
      if (notificationID != null) 'notification_i_d': notificationID,
    });
  }

  NotificationsCompanion copyWith(
      {Value<String> dateAndTime, Value<int> notificationID}) {
    return NotificationsCompanion(
      dateAndTime: dateAndTime ?? this.dateAndTime,
      notificationID: notificationID ?? this.notificationID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (dateAndTime.present) {
      map['date_and_time'] = Variable<String>(dateAndTime.value);
    }
    if (notificationID.present) {
      map['notification_i_d'] = Variable<int>(notificationID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationsCompanion(')
          ..write('dateAndTime: $dateAndTime, ')
          ..write('notificationID: $notificationID')
          ..write(')'))
        .toString();
  }
}

class $NotificationsTable extends Notifications
    with TableInfo<$NotificationsTable, Notification> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotificationsTable(this._db, [this._alias]);
  final VerificationMeta _dateAndTimeMeta =
      const VerificationMeta('dateAndTime');
  GeneratedTextColumn _dateAndTime;
  @override
  GeneratedTextColumn get dateAndTime =>
      _dateAndTime ??= _constructDateAndTime();
  GeneratedTextColumn _constructDateAndTime() {
    return GeneratedTextColumn(
      'date_and_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _notificationIDMeta =
      const VerificationMeta('notificationID');
  GeneratedIntColumn _notificationID;
  @override
  GeneratedIntColumn get notificationID =>
      _notificationID ??= _constructNotificationID();
  GeneratedIntColumn _constructNotificationID() {
    return GeneratedIntColumn('notification_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  @override
  List<GeneratedColumn> get $columns => [dateAndTime, notificationID];
  @override
  $NotificationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'notifications';
  @override
  final String actualTableName = 'notifications';
  @override
  VerificationContext validateIntegrity(Insertable<Notification> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date_and_time')) {
      context.handle(
          _dateAndTimeMeta,
          dateAndTime.isAcceptableOrUnknown(
              data['date_and_time'], _dateAndTimeMeta));
    } else if (isInserting) {
      context.missing(_dateAndTimeMeta);
    }
    if (data.containsKey('notification_i_d')) {
      context.handle(
          _notificationIDMeta,
          notificationID.isAcceptableOrUnknown(
              data['notification_i_d'], _notificationIDMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {notificationID};
  @override
  Notification map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Notification.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NotificationsTable createAlias(String alias) {
    return $NotificationsTable(_db, alias);
  }
}

class Kin extends DataClass implements Insertable<Kin> {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final int kinID;
  Kin(
      {@required this.firstName,
      @required this.lastName,
      @required this.phoneNumber,
      @required this.kinID});
  factory Kin.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return Kin(
      firstName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name']),
      lastName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name']),
      phoneNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number']),
      kinID: intType.mapFromDatabaseResponse(data['${effectivePrefix}kin_i_d']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || kinID != null) {
      map['kin_i_d'] = Variable<int>(kinID);
    }
    return map;
  }

  KinsCompanion toCompanion(bool nullToAbsent) {
    return KinsCompanion(
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      kinID:
          kinID == null && nullToAbsent ? const Value.absent() : Value(kinID),
    );
  }

  factory Kin.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Kin(
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      kinID: serializer.fromJson<int>(json['kinID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'kinID': serializer.toJson<int>(kinID),
    };
  }

  Kin copyWith(
          {String firstName, String lastName, String phoneNumber, int kinID}) =>
      Kin(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        kinID: kinID ?? this.kinID,
      );
  @override
  String toString() {
    return (StringBuffer('Kin(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('kinID: $kinID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(firstName.hashCode,
      $mrjc(lastName.hashCode, $mrjc(phoneNumber.hashCode, kinID.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Kin &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.phoneNumber == this.phoneNumber &&
          other.kinID == this.kinID);
}

class KinsCompanion extends UpdateCompanion<Kin> {
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> phoneNumber;
  final Value<int> kinID;
  const KinsCompanion({
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.kinID = const Value.absent(),
  });
  KinsCompanion.insert({
    @required String firstName,
    @required String lastName,
    @required String phoneNumber,
    @required int kinID,
  })  : firstName = Value(firstName),
        lastName = Value(lastName),
        phoneNumber = Value(phoneNumber),
        kinID = Value(kinID);
  static Insertable<Kin> custom({
    Expression<String> firstName,
    Expression<String> lastName,
    Expression<String> phoneNumber,
    Expression<int> kinID,
  }) {
    return RawValuesInsertable({
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (kinID != null) 'kin_i_d': kinID,
    });
  }

  KinsCompanion copyWith(
      {Value<String> firstName,
      Value<String> lastName,
      Value<String> phoneNumber,
      Value<int> kinID}) {
    return KinsCompanion(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      kinID: kinID ?? this.kinID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (kinID.present) {
      map['kin_i_d'] = Variable<int>(kinID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KinsCompanion(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('kinID: $kinID')
          ..write(')'))
        .toString();
  }
}

class $KinsTable extends Kins with TableInfo<$KinsTable, Kin> {
  final GeneratedDatabase _db;
  final String _alias;
  $KinsTable(this._db, [this._alias]);
  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  GeneratedTextColumn _firstName;
  @override
  GeneratedTextColumn get firstName => _firstName ??= _constructFirstName();
  GeneratedTextColumn _constructFirstName() {
    return GeneratedTextColumn(
      'first_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  GeneratedTextColumn _lastName;
  @override
  GeneratedTextColumn get lastName => _lastName ??= _constructLastName();
  GeneratedTextColumn _constructLastName() {
    return GeneratedTextColumn(
      'last_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  GeneratedTextColumn _phoneNumber;
  @override
  GeneratedTextColumn get phoneNumber =>
      _phoneNumber ??= _constructPhoneNumber();
  GeneratedTextColumn _constructPhoneNumber() {
    return GeneratedTextColumn(
      'phone_number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _kinIDMeta = const VerificationMeta('kinID');
  GeneratedIntColumn _kinID;
  @override
  GeneratedIntColumn get kinID => _kinID ??= _constructKinID();
  GeneratedIntColumn _constructKinID() {
    return GeneratedIntColumn(
      'kin_i_d',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [firstName, lastName, phoneNumber, kinID];
  @override
  $KinsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'kins';
  @override
  final String actualTableName = 'kins';
  @override
  VerificationContext validateIntegrity(Insertable<Kin> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name'], _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name'], _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number'], _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('kin_i_d')) {
      context.handle(
          _kinIDMeta, kinID.isAcceptableOrUnknown(data['kin_i_d'], _kinIDMeta));
    } else if (isInserting) {
      context.missing(_kinIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Kin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Kin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $KinsTable createAlias(String alias) {
    return $KinsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TenantsTable _tenants;
  $TenantsTable get tenants => _tenants ??= $TenantsTable(this);
  $UnitsTable _units;
  $UnitsTable get units => _units ??= $UnitsTable(this);
  $PaymentsTable _payments;
  $PaymentsTable get payments => _payments ??= $PaymentsTable(this);
  $NotificationsTable _notifications;
  $NotificationsTable get notifications =>
      _notifications ??= $NotificationsTable(this);
  $KinsTable _kins;
  $KinsTable get kins => _kins ??= $KinsTable(this);
  TenantDao _tenantDao;
  TenantDao get tenantDao => _tenantDao ??= TenantDao(this as AppDatabase);
  UnitDao _unitDao;
  UnitDao get unitDao => _unitDao ??= UnitDao(this as AppDatabase);
  PaymentDao _paymentDao;
  PaymentDao get paymentDao => _paymentDao ??= PaymentDao(this as AppDatabase);
  NotificationDao _notificationDao;
  NotificationDao get notificationDao =>
      _notificationDao ??= NotificationDao(this as AppDatabase);
  KinDao _kinDao;
  KinDao get kinDao => _kinDao ??= KinDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [tenants, units, payments, notifications, kins];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$TenantDaoMixin on DatabaseAccessor<AppDatabase> {
  $TenantsTable get tenants => attachedDatabase.tenants;
  Selectable<Tenant> tenantsGenerated() {
    return customSelect('SELECT * FROM tenants;',
        variables: [], readsFrom: {tenants}).map(tenants.mapFromRow);
  }
}
mixin _$UnitDaoMixin on DatabaseAccessor<AppDatabase> {
  $UnitsTable get units => attachedDatabase.units;
  Selectable<Unit> unitsGenerated() {
    return customSelect('SELECT * FROM units;',
        variables: [], readsFrom: {units}).map(units.mapFromRow);
  }
}
mixin _$PaymentDaoMixin on DatabaseAccessor<AppDatabase> {
  $PaymentsTable get payments => attachedDatabase.payments;
  Selectable<Payment> paymentsGenerated() {
    return customSelect('SELECT * FROM payments ORDER BY date_and_time DESC;',
        variables: [], readsFrom: {payments}).map(payments.mapFromRow);
  }
}
mixin _$KinDaoMixin on DatabaseAccessor<AppDatabase> {
  $KinsTable get kins => attachedDatabase.kins;
  Selectable<Kin> kinsGenerated() {
    return customSelect('SELECT * FROM kins;', variables: [], readsFrom: {kins})
        .map(kins.mapFromRow);
  }
}
mixin _$NotificationDaoMixin on DatabaseAccessor<AppDatabase> {
  $NotificationsTable get notifications => attachedDatabase.notifications;
}
