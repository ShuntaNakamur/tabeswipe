class Dish {
  final String name;
  final String restaurantName;
  final String category;
  final int price;
  final String description;
  final String imagePath;

  const Dish({
    required this.name,
    required this.restaurantName,
    required this.category,
    required this.price,
    required this.description,
    required this.imagePath,
  });
}

const dummyDishes = [
  Dish(
    name: '濃厚豚骨ラーメン',
    restaurantName: '西中島ラーメン',
    category: 'ラーメン',
    price: 900,
    description: '濃厚な豚骨スープと自家製麺が特徴。',
    imagePath: 'assets/images/ramen.jpg',
  ),
  Dish(
    name: '欧風ビーフカレー',
    restaurantName: 'カレー専門店 西中島店',
    category: 'カレー',
    price: 1_000,
    description: 'じっくり煮込んだ牛肉の欧風カレー。',
    imagePath: 'assets/images/curry.jpg',
  ),
  Dish(
    name: '特上にぎり',
    restaurantName: '鮨 西中島',
    category: '寿司',
    price: 1_500,
    description: 'ランチで楽しめる特上握り。',
    imagePath: 'assets/images/sushi.jpg',
  ),
  Dish(
    name: '和牛焼肉ランチ',
    restaurantName: '焼肉 西中島',
    category: '焼肉',
    price: 1_200,
    description: '厳選した和牛をリーズナブルに楽しめるランチ。',
    imagePath: 'assets/images/yakiniku.jpg',
  ),
  Dish(
    name: 'チーズバーガー',
    restaurantName: 'NISHINAKAJIMA BURGER',
    category: 'ハンバーガー',
    price: 1_100,
    description: '肉厚パティと濃厚チーズのクラシックバーガー。',
    imagePath: 'assets/images/burger.jpg',
  ),
];
