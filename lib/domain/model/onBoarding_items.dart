class OnBoardItems {
  final String image;
  final String title;
  final String shortDescription;

  OnBoardItems(
      {required this.image,
      required this.title,
      required this.shortDescription});
}

class OnboardData {
  static List<OnBoardItems> onBoardItemList = [
    OnBoardItems(
      image: 'assets/images/onboard_1.svg',
      title: "View and buy Medicine online",
      shortDescription:
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
    ),
    OnBoardItems(
      image: 'assets/images/onboard_2.svg',
      title: "Online medical & Healthcare",
      shortDescription:
          "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.r",
    ),
  ];
}
