import 'package:moor_flutter/moor_flutter.dart';
import 'package:rental_ui/models/payment.dart' as lib2;
import 'package:rental_ui/dummy_data/dummy_payments.dart';
import 'dart:developer' as developer;

part 'moor_db.g.dart';

class Tenants extends Table {
  TextColumn get firstName => text()();

  TextColumn get lastName => text()();

  TextColumn get idNumber => text()();

  TextColumn get emailAddress => text().nullable()();

  TextColumn get phoneNumber => text()();

  TextColumn get occupation => text().nullable()();

  TextColumn get tenantId => text()();

  TextColumn get tenantUnitId => text()();

  @override
  Set<Column> get primaryKey => {tenantId};
}

class Units extends Table {
  TextColumn get unitId => text()();

  TextColumn get apartmentName => text()();

  TextColumn get estateName => text().nullable()();

  TextColumn get managerTelephone => text()();

  RealColumn get rentBilling => real()();

  @override
  Set<Column> get primaryKey => {unitId};
}

class Payments extends Table {
  TextColumn get dateAndTime => text()();

  RealColumn get amountPaid => real()();

  RealColumn get amountDue => real()();

  TextColumn get transactionCode => text().nullable()();

  TextColumn get transactionProvider => text().nullable()();

  IntColumn get paymentID => integer().autoIncrement()();
}

class Kins extends Table {
  TextColumn get firstName => text()();

  TextColumn get lastName => text()();

  TextColumn get phoneNumber => text()();

  IntColumn get kinID => integer()();
}

class Notifications extends Table {
  TextColumn get dateAndTime => text()();

  IntColumn get notificationID => integer().autoIncrement()();
}

@UseMoor(
    tables: [Tenants, Units, Payments, Notifications, Kins],
    daos: [TenantDao, UnitDao, PaymentDao, NotificationDao, KinDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'appdb', logStatements: true));

  @override
  int get schemaVersion => 1;

  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (OpeningDetails details) async {
          await customStatement('PRAGMA foreign_key = ON');
        },
        onCreate: (migrator) async {
        await migrator.createAll();
        await into(payments).insert(
          PaymentsCompanion(
            dateAndTime: Value('2019'),
            amountPaid: Value(2500.00),
            amountDue: Value(0.00),
            transactionCode: Value('hjgkfj'),
            transactionProvider: Value('mpesa'),
          ),
        );
        await into(tenants).insert(
          TenantsCompanion(
            firstName: Value('George'),
            lastName: Value('Bange'),
          ),
        );
        },
      );
}

@UseDao(
  tables: [Tenants],
  queries: {'tenantsGenerated': 'SELECT * FROM tenants;'},
)
class TenantDao extends DatabaseAccessor<AppDatabase> with _$TenantDaoMixin {
  final AppDatabase db;

  TenantDao(this.db) : super(db);

  Future insertTenant(Insertable<Tenant> tenant) =>
      into(tenants).insert(tenant);

  Future updateTenant(Insertable<Tenant> tenant) =>
      update(tenants).replace(tenant);

  Future deleteTenant(Insertable<Tenant> tenant) =>
      delete(tenants).delete(tenant);

  Future<List<Tenant>> getTenantsList1() => select(tenants).get();

  Stream<List<Tenant>> getTenantsStream1() => select(tenants).watch();
}

@UseDao(
  tables: [Units],
  queries: {'unitsGenerated': 'SELECT * FROM units;'},
)
class UnitDao extends DatabaseAccessor<AppDatabase> with _$UnitDaoMixin {
  final AppDatabase db;

  UnitDao(this.db) : super(db);

  Future insertUnit(Insertable<Unit> unit) => into(units).insert(unit);

  Future updateUnit(Insertable<Unit> unit) => update(units).replace(unit);

  Future deleteUnit(Insertable<Unit> unit) => delete(units).delete(unit);

  Future<List<Unit>> getUnitsList1() => select(units).get();

  Stream<List<Unit>> getUnitsStream1() => select(units).watch();
}

@UseDao(
  tables: [Payments],
  queries: {
    'paymentsGenerated': 'SELECT * FROM payments ORDER BY date_and_time DESC;'
  },
)
class PaymentDao extends DatabaseAccessor<AppDatabase> with _$PaymentDaoMixin {
  final AppDatabase db;

  PaymentDao(this.db) : super(db);

  Future insertPayment(Insertable<Payment> payment) =>
      into(payments).insert(payment);

  Future updatePayment(Insertable<Payment> payment) =>
      update(payments).replace(payment);

  Future deletePayment(Insertable<Payment> payment) =>
      delete(payments).delete(payment);

  Future<List<Payment>> getPaymentsList1() => select(payments).get();

  Stream<List<Payment>> getPaymentsStream1() => select(payments).watch();
}

@UseDao(
  tables: [Kins],
  queries: {'kinsGenerated': 'SELECT * FROM kins;'},
)
class KinDao extends DatabaseAccessor<AppDatabase> with _$KinDaoMixin {
  final AppDatabase db;

  KinDao(this.db) : super(db);

  Future insertKin(Insertable<Kin> kin) => into(kins).insert(kin);

  Future updateKin(Insertable<Kin> kin) => update(kins).replace(kin);

  Future deleteKin(Insertable<Kin> kin) => delete(kins).delete(kin);

  Future<List<Kin>> getKinsList1() => select(kins).get();

  Stream<List<Kin>> getKinsStream1() => select(kins).watch();
}

@UseDao(tables: [Notifications])
class NotificationDao extends DatabaseAccessor<AppDatabase>
    with _$NotificationDaoMixin {
  final AppDatabase db;

  NotificationDao(this.db) : super(db);

  Future insertNotification(Insertable<Notification> notification) =>
      into(notifications).insert(notification);

  Future updateNotification(Insertable<Notification> notification) =>
      update(notifications).replace(notification);

  Future deleteNotification(Insertable<Notification> notification) =>
      delete(notifications).delete(notification);

  Future<List<Notification>> getNotificationsList1() =>
      select(notifications).get();

  Stream<List<Notification>> getNotificationsStream1() =>
      select(notifications).watch();

  Stream<List<Notification>> getNotificationsStream2() {
    return customSelect(
      'SELECT * FROM notifications;',
      readsFrom: {notifications},
    ).watch().map((rows) {
      return rows.map((row) => Notification.fromData(row.data, db)).toList();
    });
  }
}
