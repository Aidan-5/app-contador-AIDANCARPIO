import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pe24_cicd_demo/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('App title is displayed', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title is displayed.
    expect(find.text('CI/CD Pipeline Demo'), findsOneWidget);
  });

  testWidgets('Pipeline text is displayed', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the pipeline text is displayed.
    expect(find.text('Pipeline ejecutándose correctamente:'), findsOneWidget);
  });

  testWidgets('Floating action button is present', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the FAB is present.
    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets('Counter increments multiple times', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify initial state.
    expect(find.text('0'), findsOneWidget);

    // Tap the '+' icon 5 times.
    for (int i = 0; i < 5; i++) {
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
    }

    // Verify that our counter has incremented to 5.
    expect(find.text('5'), findsOneWidget);
  });
}
