import 'dart:async';

import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {
  final String serviceId;
  HeaderInterceptor(this.serviceId);
  @override
  FutureOr<Request> onRequest(Request request) {
    return request.copyWith(headers: {"Authorization": this.serviceId});
  }
}
