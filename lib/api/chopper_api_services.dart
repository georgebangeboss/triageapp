import 'package:chopper/chopper.dart';
import 'package:rental_ui/api/data_classes.dart';

part 'chopper_api_services.chopper.dart';

@ChopperApi(baseUrl: "/unit")
abstract class UnitApiService extends ChopperService {
  @Get()
  Future<Response<BuiltUnit>> getUnit(
      [@Header('uniqueServiceId') String tenantServiceId]);
  static UnitApiService create(String idNumberConcat, ChopperClient client) =>
      _$UnitApiService(idNumberConcat, client);
}

@ChopperApi(baseUrl: "/tenant")
abstract class TenantApiService extends ChopperService {
  @Get()
  Future<Response<BuiltTenant>> getTenant(
      [@Header('uniqueServiceId') String tenantServiceId]);

  @Put()
  Future<Response> createNewTenant(@Body() BuiltTenant body,
      [@Header('uniqueServiceId') String tenantServiceId]);

  @Patch()
  Future<Response> updateTenant(@Body() BuiltTenant body,
      [@Header('uniqueServiceId') String tenantServiceId]);
  static TenantApiService create(String idNumberConcat, ChopperClient client) =>
      _$TenantApiService(idNumberConcat, client);
}

@ChopperApi(baseUrl: "/payment")
abstract class PaymentApiService extends ChopperService {
  @Get()
  Future<Response<BuiltPayment>> getPayments(
      [@Header('uniqueServiceId') String tenantServiceId]);

  static PaymentApiService create(
          String idNumberConcat, ChopperClient client) =>
      _$PaymentApiService(idNumberConcat, client);
}

@ChopperApi(baseUrl: "/notification")
abstract class NotificationApiService extends ChopperService {
  @Get()
  Future<Response<BuiltPayment>> getNotifications(
      [@Header('uniqueServiceId') String tenantServiceId]);

  static PaymentApiService create(
          String idNumberConcat, ChopperClient client) =>
      _$PaymentApiService(idNumberConcat, client);
}
