import '../discovery/data/dummy_dishes.dart';

class LikeState {
  final Set<Dish> _likedDishes = {};

  Set<Dish> get likedDishes => Set.unmodifiable(_likedDishes);

  void like(Dish dish) {
    _likedDishes.add(dish);
  }

  bool isLiked(Dish dish) {
    return _likedDishes.contains(dish);
  }
}