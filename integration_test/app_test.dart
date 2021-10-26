import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_integration_test/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  _testTapOnce();
  _testTapTwice();
}

void _testTapTwice() {
  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the floating action button to tap on.
      final Finder fab = find.byTooltip('Increment');

      // Emulate a tap on the floating action button.
      await tester.tap(fab);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Emulate a tap on the floating action button.
      await tester.tap(fab);

      // Trigger a frame.
      await tester.pumpAndSettle();

      await Future.delayed(Duration(milliseconds: 1000));

      // Verify the counter increments by 1.
      expect(find.text('2'), findsOneWidget);
    });
  });
}

void _testTapOnce() {
  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the floating action button to tap on.
      final Finder fab = find.byTooltip('Increment');

      // Emulate a tap on the floating action button.
      await tester.tap(fab);

      // Trigger a frame.
      await tester.pumpAndSettle();

      await Future.delayed(Duration(milliseconds: 1000));

      // Verify the counter increments by 1.
      expect(find.text('1'), findsOneWidget);
    });
  });
}
