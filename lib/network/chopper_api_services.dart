import 'package:chopper/chopper.dart';

part 'chopper_api_services.chopper.dart';

@ChopperApi(baseUrl: "/unit")
abstract class UnitApiService extends ChopperService {
  @Get()
  Future<Response> getUnit([@Header('uniqueServiceId') String tenantServiceId]);
  static UnitApiService create(ChopperClient client) =>
      _$UnitApiService(client);
}

@ChopperApi(baseUrl: "/tenant")
abstract class TenantApiService extends ChopperService {
  @Get()
  Future<Response> getTenant(
      [@Header('uniqueServiceId') String tenantServiceId]);

  @Put()
  Future<Response> updateTenant(@Body() Map<String, String> body,
      [@Header('uniqueServiceId') String tenantServiceId]);
  static TenantApiService create(ChopperClient client) =>
      _$TenantApiService(client);
}

@ChopperApi(baseUrl: "/payments")
abstract class PaymentApiService extends ChopperService {
  @Get()
  Future<Response> getPayments(
      [@Header('uniqueServiceId') String tenantServiceId]);

  static PaymentApiService create(ChopperClient client) =>
      _$PaymentApiService(client);
}
