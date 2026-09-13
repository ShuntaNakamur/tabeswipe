import 'package:flutter/material.dart';

import '../../../discovery/presentation/pages/discovery_page.dart';
import '../../../like/like_state.dart';
import '../../../like/presentation/pages/like_page.dart';

class HomePage extends StatefulWidget {
  final LikeState likeState;

  const HomePage({
    super.key,
    required this.likeState,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      DiscoveryPage(likeState: widget.likeState),
      LikePage(likeState: widget.likeState),
    ];

    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: '発見',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: '食べたい',
          ),
        ],
      ),
    );
  }
}