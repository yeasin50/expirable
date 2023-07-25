import 'package:expirable_widget/expirable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExpirableWidget', () {
    group('Failure cases', () {
      testWidgets('throws an error if the expireDate is before the current date', (tester) async {
        await tester.pumpWidget(
          ExpirableWidget(
            expireDate: DateTime.now().subtract(const Duration(days: 1)),
            child: Container(),
          ),
        );
        expect(tester.takeException(), isFlutterError);
      });
    });
    group('Success cases', () {
      testWidgets('does not throw an error if the expireDate is after the current date', (tester) async {
        await tester.pumpWidget(
          ExpirableWidget(
            expireDate: DateTime.now().add(const Duration(days: 1)),
            child: Container(),
          ),
        );
        expect(tester.takeException(), isNull);
      });
    });
  });
}
