import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:rental_ui/api/serializers.dart';

class BuiltValueConverter extends JsonConverter {
  T _deserialize<T>(dynamic value) => serializers.deserializeWith<T>(
        serializers.serializerForType(T),
        value,
      );

  BuiltList<T> _deserializeListOf<T>(Iterable value) => BuiltList(
        value.map((value) => _deserialize<T>(value)).toList(growable: false),
      );

  dynamic _decode<T>(entity) {
    if (entity is T) return entity;

    try {
      if (entity is List) return _deserializeListOf<T>(entity);
      return _deserialize<T>(entity);
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    // use [JsonConverter] to decode json
    final jsonRes = super.convertResponse(response);
    final body = _decode<Item>(jsonRes.body);
    return jsonRes.copyWith<ResultType>(body: body);
  }

  @override
  Request convertRequest(Request request) {
    print(serializers.serialize(request.body));
    return super.convertRequest(request.copyWith(
      body: serializers.serializeWith(
        serializers.serializerForType(request.body.runtimeType),
        request.body,
      ),
    ));
  }
}
