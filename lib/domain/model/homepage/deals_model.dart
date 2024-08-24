class DealsModel {
  final String image;
  final String title;
  final double price;
  final double rating;
  final String? route;

  DealsModel({
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    this.route,
  });
}

final List<DealsModel> dealsModel = [
  DealsModel(
    title: 'Accu-check Active Test Strip',
    image: 'assets/images/product_1.png',
    price: 112000,
    rating: 4.2,
    route: '/detailproduct',
  ),
  DealsModel(
    title: 'Omron HEM-8712 BP Monitor',
    image: 'assets/images/product_2.png',
    price: 150000,
    rating: 4.8,
    route: '/detailproduct',
  ),
  DealsModel(
    title: 'Accu-check Active Test Strip',
    image: 'assets/images/product_1.png',
    price: 112000,
    rating: 4.2,
    route: '/detailproduct',
  ),
  DealsModel(
    title: 'Omron HEM-8712 BP Monitor',
    image: 'assets/images/product_2.png',
    price: 150000,
    rating: 4.8,
    route: '/detailproduct',
  ),
  DealsModel(
    title: 'Accu-check Active Test Strip',
    image: 'assets/images/product_1.png',
    price: 112000,
    rating: 4.2,
    route: '/detailproduct',
  ),
  DealsModel(
    title: 'Omron HEM-8712 BP Monitor',
    image: 'assets/images/product_2.png',
    price: 150000,
    rating: 4.8,
    route: '/detailproduct',
  ),
];
