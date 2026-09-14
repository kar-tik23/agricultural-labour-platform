import 'package:flutter_test/flutter_test.dart';

import 'package:mobile/main.dart';

void main() {
  testWidgets('Agricultural Labour Platform loads', (tester) async {
    await tester.pumpWidget(const AgriculturalLabourApp());

    expect(
      find.text('Agricultural Labour Platform'),
      findsNWidgets(2),
    );
  });
}