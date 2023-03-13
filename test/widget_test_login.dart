import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cfmkids/login.dart';
import 'package:cfmkids/mainpage.dart';

// TODO: Add test cases for Sign up button
// TODO: Add test cases to see if images displayed correctly
// TODO: Add test cases to see if the layout is centered and correctly displaying padding and spacing
// TODO: Add test cases to verify colors and texts for buttons
// TODO: Add test cases to verify the app against different screen sizes and orientations

void main() {
  testWidgets('Login button triggers the correct action',
      (WidgetTester tester) async {
    // Build the LoginPage widget
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    // Tap the login button
    await tester.tap(find.byKey(const Key('loginBtn')));
    await tester.pumpAndSettle();

    // Check if the MainPage widget is pushed onto the stack
    expect(find.byType(MainPage), findsOneWidget);
  });

  testWidgets('Email and password input fields are visible',
      (WidgetTester tester) async {
    // Build the LoginPage widget
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    // Check if the email and password input fields are visible
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
  });

  testWidgets('Back button navigates back to the previous screen',
      (WidgetTester tester) async {
    // Build the LoginPage widget
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: const Center(),
      ),
    ));

    // Push the LoginPage widget onto the stack
    await tester.tap(find.byIcon(Icons.arrow_back_ios));
    await tester.pumpAndSettle();

    // Check if the previous screen is displayed
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
