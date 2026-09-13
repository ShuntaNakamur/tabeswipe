import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tabeswipe/features/discovery/presentation/pages/discovery_page.dart';
import 'package:tabeswipe/features/like/like_state.dart';
void main() {
  testWidgets('DiscoveryPage displays a dish name', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: DiscoveryPage(
  likeState: LikeState(),
),
      ),
    );

    expect(find.text('濃厚豚骨ラーメン'), findsOneWidget);
  });
}
