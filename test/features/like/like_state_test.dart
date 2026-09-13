import 'package:flutter_test/flutter_test.dart';
import 'package:tabeswipe/features/discovery/data/dummy_dishes.dart';
import 'package:tabeswipe/features/like/like_state.dart';

void main() {
  test('LikeState can like a dish', () {
    final likeState = LikeState();
    final dish = dummyDishes[0];

    likeState.like(dish);

    expect(likeState.isLiked(dish), isTrue);
    expect(likeState.likedDishes, contains(dish));
  });

  test('LikeState does not duplicate the same dish', () {
    final likeState = LikeState();
    final dish = dummyDishes[0];

    likeState.like(dish);
    likeState.like(dish);

    expect(likeState.likedDishes.length, 1);
  });
}
