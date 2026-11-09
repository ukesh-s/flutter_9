import 'package:flutter_test/flutter_test.dart';
import 'package:experiment_9/main.dart';

void main() {
  testWidgets('shows simulated records with edit actions', (tester) async {
    await tester.pumpWidget(const UpdateDemoApp());
    expect(find.text('Update Employee Records'), findsOneWidget);
    expect(find.text('Simulated Firestore update'), findsOneWidget);
    expect(find.text('Jordan Lee'), findsOneWidget);
    expect(find.byTooltip('Edit Jordan Lee'), findsOneWidget);
  });
}
