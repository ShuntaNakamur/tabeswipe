import 'package:flutter/material.dart';

import 'features/discovery/presentation/pages/discovery_page.dart';
import 'features/like/like_state.dart';

void main() {
  runApp(TabeswipeApp());
}

class TabeswipeApp extends StatelessWidget {
  TabeswipeApp({super.key});
  final LikeState likeState = LikeState();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabeswipe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: DiscoveryPage(likeState: likeState),
    );
  }
}
