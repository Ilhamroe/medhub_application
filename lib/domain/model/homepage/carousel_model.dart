class CarouselItems {
  final String image;
  final String title;
  final String shortDescription;

  CarouselItems(
      {required this.image,
      required this.title,
      required this.shortDescription});
}

class CarouselList {
  static List<CarouselItems> carouselItemList = [
    CarouselItems(
      image: 'assets/images/save_extra_logo.png',
      title: "Save extra on every order",
      shortDescription:
          "Etiam mollis metus non purus faucibus.",
    ),
    CarouselItems(
      image: 'assets/images/save_extra_logo.png',
      title: "Online medical & Healthcare",
      shortDescription:
          "Etiam mollis metus non purus faucibus.",
    ),
    CarouselItems(
      image: 'assets/images/save_extra_logo.png',
      title: "Online medical & Healthcare",
      shortDescription:
          "Etiam mollis metus non purus faucibus.",
    ),
  ];
}
