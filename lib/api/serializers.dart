import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:rental_ui/api/data_classes.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltTenant, BuiltUnit, BuiltPayment])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
