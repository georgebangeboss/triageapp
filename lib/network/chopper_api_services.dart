import 'package:chopper/chopper.dart';
import 'package:rental_ui/network/data_classes.dart';

part 'chopper_api_services.chopper.dart';

//TODO can the header be processed ? if no ,apart from the header pass sth else in the GETs such as the id number

@ChopperApi(baseUrl: "/apartment")
abstract class UnitApiService extends ChopperService {
  @Get()
  Future<Response<BuiltUnit>> getUnit(
      [@Header('uniqueServiceId') String tenantServiceId]);
  static UnitApiService create(ChopperClient client) =>
      _$UnitApiService(client);
}

@ChopperApi(baseUrl: "/tenant")
abstract class TenantApiService extends ChopperService {
  @Get()
  Future<Response<BuiltTenant>> getTenant(
      [@Header('uniqueServiceId') String tenantServiceId]);

  @Put()
  Future<Response> updateTenant(@Body() Map<String, String> body,
      [@Header('uniqueServiceId') String tenantServiceId]);
  static TenantApiService create(ChopperClient client) =>
      _$TenantApiService(client);
}

@ChopperApi(baseUrl: "/payment")
abstract class PaymentApiService extends ChopperService {
  @Get()
  Future<Response<BuiltPayment>> getPayments(
      [@Header('uniqueServiceId') String tenantServiceId]);

  static PaymentApiService create(ChopperClient client) =>
      _$PaymentApiService(client);
}
