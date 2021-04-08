// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_api_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$UnitApiService extends UnitApiService {
  _$UnitApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UnitApiService;

  @override
  Future<Response<BuiltUnit>> getUnit([String tenantServiceId]) {
    final $url = '/apartment';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltUnit, BuiltUnit>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$TenantApiService extends TenantApiService {
  _$TenantApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TenantApiService;

  @override
  Future<Response<BuiltTenant>> getTenant([String tenantServiceId]) {
    final $url = '/tenant';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltTenant, BuiltTenant>($request);
  }

  @override
  Future<Response<dynamic>> updateTenant(Map<String, String> body,
      [String tenantServiceId]) {
    final $url = '/tenant';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $body = body;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PaymentApiService extends PaymentApiService {
  _$PaymentApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaymentApiService;

  @override
  Future<Response<BuiltPayment>> getPayments([String tenantServiceId]) {
    final $url = '/payment';
    final $headers = {'uniqueServiceId': tenantServiceId};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BuiltPayment, BuiltPayment>($request);
  }
}
