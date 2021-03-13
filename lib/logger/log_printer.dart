import 'package:logger/logger.dart';
class MyLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    List<String> logString=[];
    logString.add(event.message as String);
    return logString;
  }
}