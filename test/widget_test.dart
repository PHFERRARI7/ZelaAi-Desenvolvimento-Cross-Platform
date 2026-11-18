import 'package:flutter_test/flutter_test.dart';
import 'package:zela_ai/main.dart';

void main() {
  testWidgets('Exibe as seções principais', (tester) async {
    await tester.pumpWidget(const ZelaAiApp());
    expect(find.text('Em destaque'), findsOneWidget);
    expect(find.text('Categorias'), findsOneWidget);
  });

  testWidgets('Filtra ao tocar em uma categoria', (tester) async {
    await tester.pumpWidget(const ZelaAiApp());
    final chip = find.text('Buraco');
    await tester.ensureVisible(chip);
    await tester.pumpAndSettle();
    await tester.tap(chip);
    await tester.pumpAndSettle();
    expect(find.textContaining('registro(s) · Buraco'), findsOneWidget);
  });
}
