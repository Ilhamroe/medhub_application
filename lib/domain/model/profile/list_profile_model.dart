class ListProfileModel {
  final String title;
  final String image;
  final String route;

  ListProfileModel({
    required this.title,
    required this.image,
    required this.route,
  });
}

final List<ListProfileModel> listProfileModel = [
  ListProfileModel(
    title: 'Private Account',
    image: 'assets/images/prfl1.svg',
    route: '/templatepage',
  ),
  ListProfileModel(
    title: 'My Consults',
    image: 'assets/images/prfl2.svg',
    route: '/templatepage',
  ),
  ListProfileModel(
    title: 'My Orders',
    image: 'assets/images/prfl3.svg',
    route: '/templatepage',
  ),
  ListProfileModel(
    title: 'Billing',
    image: 'assets/images/prfl4.svg',
    route: '/templatepage',
  ),
  ListProfileModel(
    title: 'Faq',
    image: 'assets/images/prfl5.svg',
    route: '/templatepage',
  ),
  ListProfileModel(
    title: 'Settings',
    image: 'assets/images/prfl6.svg',
    route: '/templatepage',
  ),
  ListProfileModel(
    title: 'Logout',
    image: 'assets/images/logout.svg',
    route: '/login',
  ),
];
