import 'package:flutter/material.dart';


import '../../like_state.dart';

class LikePage extends StatelessWidget {
  final LikeState likeState;

  const LikePage({
    super.key,
    required this.likeState,
  });

  @override
  Widget build(BuildContext context) {
    final likedDishes = likeState.likedDishes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('食べたい'),
      ),
      body: likedDishes.isEmpty
          ? const Center(
              child: Text('まだ「食べたい」がありません'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: likedDishes.length,
              itemBuilder: (context, index) {
                final dish = likedDishes.elementAt(index);

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Image.asset(
                      dish.imagePath,
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                    title: Text(dish.name),
                    subtitle: Text(
                      '${dish.restaurantName}\n¥${dish.price}',
                    ),
                  ),
                );
              },
            ),
    );
  }
}