import 'package:flutter/material.dart';

import 'features/discovery/presentation/pages/discovery_page.dart';

void main() {
  runApp(const TabeswipeApp());
}

class TabeswipeApp extends StatelessWidget {
  const TabeswipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabeswipe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const DiscoveryPage(),
    );
  }
}
