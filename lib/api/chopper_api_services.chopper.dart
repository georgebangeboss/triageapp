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
  Future<Response<BuiltList<BuiltUnit>>> getUnit() {
    final $url = '/unit';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<BuiltUnit>, BuiltUnit>($request);
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
  Future<Response<BuiltList<BuiltTenant>>> getTenants(String idNumberConcat) {
    final $url = '/tenant$idNumberConcat';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<BuiltTenant>, BuiltTenant>($request);
  }

  @override
  Future<Response<dynamic>> createNewTenant(BuiltTenant body) {
    final $url = '/tenant';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltTenant, BuiltTenant>($request);
  }

  @override
  Future<Response<dynamic>> updateTenant(
      String idNumberConcat, BuiltTenant body) {
    final $url = '/tenant$idNumberConcat';
    final $body = body;
    final $request = Request('PATCH', $url, client.baseUrl, body: $body);
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
  Future<Response<BuiltList<BuiltPayment>>> getPayments() {
    final $url = '/payment';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<BuiltPayment>, BuiltPayment>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NotificationApiService extends NotificationApiService {
  _$NotificationApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NotificationApiService;

  @override
  Future<Response<BuiltPayment>> getNotifications() {
    final $url = '/notification';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltPayment, BuiltPayment>($request);
  }
}
