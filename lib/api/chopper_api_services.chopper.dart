// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_api_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$UnitApiService extends UnitApiService {
  String idNumberConcat;
  _$UnitApiService(String idNumberConcat, ChopperClient client) {
    if (client == null) return;
    this.client = client;
    this.idNumberConcat = idNumberConcat;
  }

  @override
  final definitionType = UnitApiService;

  @override
  Future<Response<BuiltUnit>> getUnit([String tenantServiceId]) {
    final $url = '/unit${this.idNumberConcat}';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltUnit, BuiltUnit>($request);
  }
}

class _$TenantApiService extends TenantApiService {
  String idNumberConcat;
  _$TenantApiService(String idNumberConcat, ChopperClient client) {
    if (client == null) return;
    this.client = client;
    this.idNumberConcat = idNumberConcat;
  }

  @override
  final definitionType = TenantApiService;

  @override
  Future<Response<BuiltTenant>> getTenant([String tenantServiceId]) {
    final $url = '/tenant${this.idNumberConcat}';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltTenant, BuiltTenant>($request);
  }

  @override
  Future<Response<dynamic>> createNewTenant(BuiltTenant body,
      [String tenantServiceId]) {
    final $url = '/tenant';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateTenant(BuiltTenant body,
      [String tenantServiceId]) {
    final $url = '/tenant${this.idNumberConcat}';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $body = body;
    final $request =
        Request('PATCH', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

class _$PaymentApiService extends PaymentApiService {
  String idNumberConcat;
  _$PaymentApiService(String idNumberConcat, ChopperClient client) {
    if (client == null) return;
    this.client = client;
    this.idNumberConcat = idNumberConcat;
  }

  @override
  final definitionType = PaymentApiService;

  @override
  Future<Response<BuiltPayment>> getPayments([String tenantServiceId]) {
    final $url = '/payment${this.idNumberConcat}';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltPayment, BuiltPayment>($request);
  }
}

class _$NotificationApiService extends NotificationApiService {
  String idNumberConcat;
  _$NotificationApiService(String idNumberConcat, ChopperClient client) {
    if (client == null) return;
    this.client = client;
    this.idNumberConcat = idNumberConcat;
  }

  @override
  final definitionType = NotificationApiService;

  @override
  Future<Response<BuiltPayment>> getNotifications([String tenantServiceId]) {
    final $url = '/notification${this.idNumberConcat}';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltPayment, BuiltPayment>($request);
  }
}
