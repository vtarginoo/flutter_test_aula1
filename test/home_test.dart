import 'package:estilizacao_componentes/components/status.dart';
import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('My Widget has a text "Spent"', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BankInherited(child: const Home()),
      ),
    );
    final spentFinder = find.text('Spent');
    expect(spentFinder, findsOneWidget);
  });

  testWidgets('finds a LinearProgressIndicator"', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BankInherited(child: const Home()),
      ),
    );
    //final spentFinder = find.text('Spent');
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('finds a Account Status"', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BankInherited(child: const Home()),
      ),
    );
    //final spentFinder = find.text('Spent');
    expect(find.byKey(const Key('testKey')), findsOneWidget);
  });
}
