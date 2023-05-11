class CategoryModel {
  String title;
  String image;
  List<SubCategoryModel> subCategories;
  CategoryModel({
    required this.title,
    required this.image,
    this.subCategories = const [],
  });
}

class SubCategoryModel {
  String title;
  String icon;
  List<SubCategoryImage> images;

  SubCategoryModel({required this.title, required this.icon, this.images = const []});
}

class SubCategoryImage {
  String image;
  String? reference;
  String? extra1;
  String? extra2;
  SubCategoryImage({required this.image, this.reference, this.extra1, this.extra2});
}
