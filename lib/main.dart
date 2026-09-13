import 'package:flutter/material.dart';


import 'features/like/like_state.dart';
import 'features/navigation/presentation/pages/home_page.dart';
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
      home: HomePage(likeState: likeState),
    );
  }
}
