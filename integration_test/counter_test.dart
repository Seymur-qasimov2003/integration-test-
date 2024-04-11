import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertesting/main.dart' as app;

void main() {
  testWidgets(
    'Counter increments smoke test',
    (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.text('0'), findsOneWidget);
      var button = find.byTooltip('Increment');
      for (var i = 1; i <= 5; i++) {
        await tester.tap(button);
        await tester.pumpAndSettle();
        expect(find.text('$i'), findsOneWidget);
      }
    },
  );
}
