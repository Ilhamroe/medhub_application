class CategoryProductModel {
  final String image;
  final String? title;
  final String? route;

  CategoryProductModel({required this.image, this.title, this.route});
}

class CategoryProductList {
  static List<CategoryProductModel> categoryProductList = [
    CategoryProductModel(image: 'assets/images/product7.png',),
    CategoryProductModel(image: 'assets/images/product7.png',),
    CategoryProductModel(image: 'assets/images/product7.png',),
  ];
}

final List<CategoryProductModel> categoryProductModel = [
  CategoryProductModel(
    title: 'Sugar Substitute',
    image: 'assets/images/product3.png',
    route: '/detailproduct',
  ),
  CategoryProductModel(
    title: 'Juices & Vinegars',
    image: 'assets/images/product4.png',
    route: '/detailproduct',
  ),
  CategoryProductModel(
    title: 'Vitamins Medicines',
    image: 'assets/images/product5.png',
    route: '/detailproduct',
  ),
];
