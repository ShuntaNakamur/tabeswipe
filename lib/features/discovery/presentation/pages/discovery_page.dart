import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../../data/dummy_dishes.dart';
import '../widgets/dish_card.dart';
import '../../../like/like_state.dart';
import '../../../like/presentation/pages/like_page.dart';

class DiscoveryPage extends StatefulWidget {
  final LikeState likeState;
  const DiscoveryPage({
  super.key,
  required this.likeState,
  });

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  final CardSwiperController _controller = CardSwiperController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _onSwipe(
  int previousIndex,
  int? currentIndex,
  CardSwiperDirection direction,
) {
  debugPrint('swipe: $previousIndex → $currentIndex / $direction');

  if (direction == CardSwiperDirection.right) {
  setState(() {
    widget.likeState.like(dummyDishes[previousIndex]);
  });

  debugPrint('liked: ${dummyDishes[previousIndex].name}');
}
  return true;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'Tabeswipe',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  centerTitle: true,
  actions: [
    IconButton(
      icon: const Icon(Icons.favorite),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LikePage(
              likeState: widget.likeState,
            ),
          ),
        );
      },
    ),
  ],
),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 8),

              Expanded(
                child: CardSwiper(
                  controller: _controller,
                  cardsCount: dummyDishes.length,
                  onSwipe: _onSwipe,
                  numberOfCardsDisplayed: 2,
                  backCardOffset: const Offset(0, 20),
                  padding: EdgeInsets.zero,
                  cardBuilder:
                      (
                        context,
                        index,
                        horizontalOffsetPercentage,
                        verticalOffsetPercentage,
                      ) {
                        return DishCard(dish: dummyDishes[index]);
                      },
                ),
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ActionButton(
                    icon: Icons.close,
                    onPressed: () {
                      _controller.swipe(CardSwiperDirection.left);
                    },
                  ),
                  const SizedBox(width: 32),
                  _ActionButton(
                    icon: Icons.favorite,
                    onPressed: () {
                      _controller.swipe(CardSwiperDirection.right);
                    },
                  ),
                ],
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _ActionButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(icon, size: 30),
      ),
    );
  }
}
