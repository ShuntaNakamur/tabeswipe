import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tabeswipe/features/like/like_state.dart';
import 'package:tabeswipe/features/navigation/presentation/pages/home_page.dart';

void main() {
  testWidgets('HomePage switches between discovery and like pages',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HomePage(
          likeState: LikeState(),
        ),
      ),
    );

    expect(find.text('発見'), findsOneWidget);

    await tester.tap(find.text('食べたい'));
    await tester.pump();

    expect(find.text('まだ「食べたい」がありません'), findsOneWidget);
  });
}