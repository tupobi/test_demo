// import 'package:flutter_driver/driver_extension.dart';
import 'package:integration_test/integration_test_driver.dart';

// use this cmd to integration test:
// flutter drive --driver=test_driver/integration_test.dart --target integration_test/app_test.dart --use-existing-app=ws://127.0.0.1:61144/KkxWF_gIdAI=/ws
Future<void> main() {
  // enableFlutterDriverExtension();
  return integrationDriver();
}
