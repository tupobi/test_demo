// import 'package:flutter_driver/driver_extension.dart';
import 'package:integration_test/integration_test_driver.dart';

// use this cmd to integration test.
// flutter drive --driver=integration_test/integration_driver.dart --target integration_test/app_test.dart --use-existing-app=ws://127.0.0.1:52756/7G6XpOvjkDI=/ws
Future<void> main() {
  // enableFlutterDriverExtension();
  return integrationDriver();
}
