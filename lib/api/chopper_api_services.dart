import 'package:chopper/chopper.dart';
import 'package:rental_ui/api/data_classes.dart';
import 'package:built_collection/built_collection.dart';

part 'chopper_api_services.chopper.dart';

@ChopperApi(baseUrl: "/unit")
abstract class UnitApiService extends ChopperService {
  @Get()
  Future<Response<BuiltList<BuiltUnit>>> getUnit();
  static UnitApiService create(ChopperClient client) =>
      _$UnitApiService(client);
}

@ChopperApi(baseUrl: "/tenant")
abstract class TenantApiService extends ChopperService {
  @Get(path: '{idNumber}')
  Future<Response<BuiltList<BuiltTenant>>> getTenants(
      @Path('idNumber') String idNumberConcat);

  @Post()
  Future<Response<dynamic>> createNewTenant(@Body() BuiltTenant body);

  @Patch(path: '{idNumber}')
  Future<Response<dynamic>> updateTenant(
      @Path('idNumber') String idNumberConcat, @Body() BuiltTenant body);
  static TenantApiService create(ChopperClient client) =>
      _$TenantApiService(client);
}

@ChopperApi(baseUrl: "/payment")
abstract class PaymentApiService extends ChopperService {
  @Get()
  Future<Response<BuiltList<BuiltPayment>>> getPayments();

  static PaymentApiService create(ChopperClient client) =>
      _$PaymentApiService(client);
}

@ChopperApi(baseUrl: "/notification")
abstract class NotificationApiService extends ChopperService {
  @Get()
  Future<Response<BuiltPayment>> getNotifications();

  static PaymentApiService create(ChopperClient client) =>
      _$PaymentApiService(client);
}
