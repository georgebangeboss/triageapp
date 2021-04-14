import 'package:chopper/chopper.dart';
import 'package:rental_ui/api/built_value_converter.dart';

class MyChopperClient {
  static ChopperClient client = ChopperClient(
    baseUrl: "https://swagger.sarrin.tech/api",
    interceptors: [
      HttpLoggingInterceptor(),
    ],
    converter: BuiltValueConverter(),
  );
}
