class AllProductModel {
  final String image;
  final String title;
  final double price;
  final double rating;
  final String route;
  final String? discount;
  final String? color;

  AllProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.route,
    this.discount,
    this.color,
  });
}

final List<AllProductModel> allProductModel = [
  AllProductModel(
    title: 'Sugar Free Green Low Calories',
    image: 'assets/images/product6.png',
    price: 120000,
    rating: 4.8,
    discount: 'SALE',
    route: '/detailproduct',
  ),
  AllProductModel(
    title: 'Sugar Free Natura Low Calories',
    image: 'assets/images/product7.png',
    price: 150000,
    rating: 4.2,
    discount: '15 % OFF',
    route: '/detailproduct',
  ),
  AllProductModel(
    title: 'Sugar Free Gold Low Calories',
    image: 'assets/images/product8.png',
    price: 90000,
    rating: 4.1,
    route: '/detailproduct',
  ),
  AllProductModel(
    title: 'Sugar Free Cook & Bake',
    image: 'assets/images/product9.png',
    price: 110000,
    rating: 4.5,
    route: '/detailproduct',
  ),
];

