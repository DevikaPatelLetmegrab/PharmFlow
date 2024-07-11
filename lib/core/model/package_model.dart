class PackageModel {
  final String title;
  final String content;
  final String icon;
  final String price;
  bool isSelected;

  PackageModel(
      {required this.title,
      required this.content,
      required this.icon,
      required this.isSelected,
      required this.price});
}
