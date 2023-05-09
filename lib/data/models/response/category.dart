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
  List<SubCategoryImage> images;

  SubCategoryModel({required this.title, this.images = const []});
}

class SubCategoryImage {
  String image;
  String? reference;
  SubCategoryImage({required this.image, this.reference});
}
