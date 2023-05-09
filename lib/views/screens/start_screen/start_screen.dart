import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_template/services/extensions.dart';
import 'package:flutter_template/services/theme.dart';
import 'package:flutter_template/views/base/common_button.dart';
import 'package:flutter_template/views/screens/splash_screen/splash_screen.dart';
import 'package:flutter_template/views/screens/start_screen/sub_category_screen.dart';

import '../../../data/models/response/category.dart';
import '../../../services/route_helper.dart';
import '../../base/custom_image.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<CategoryModel> categories = [
      CategoryModel(title: "BPH", image: Assets.imagesIndexIcon1, subCategories: [
        SubCategoryModel(
          title: "CON T",
          images: [
            SubCategoryImage(image: Assets.imagesBphConti1, reference: null),
            SubCategoryImage(image: Assets.imagesBphConti2, reference: Assets.imagesBphConti2Ref),
            SubCategoryImage(image: Assets.imagesBphConti3, reference: Assets.imagesBphConti3Ref),
            SubCategoryImage(image: Assets.imagesBphConti4, reference: Assets.imagesBphConti4Ref),
            SubCategoryImage(image: Assets.imagesBphConti5, reference: Assets.imagesBphConti5Ref),
            SubCategoryImage(image: Assets.imagesBphConti6, reference: Assets.imagesBphConti6Ref),
          ],
        ),
        SubCategoryModel(
          title: "CON I",
          images: [],
        ),
        SubCategoryModel(
          title: "TAM",
          images: [],
        ),
        SubCategoryModel(
          title: "MOD",
          images: [],
        ),
        SubCategoryModel(
          title: "SOL",
          images: [],
        ),
      ]),
      CategoryModel(title: "BLADDER", image: Assets.imagesIndexIcon2, subCategories: [
        SubCategoryModel(
          title: "MIR",
          images: [],
        ),
        SubCategoryModel(
          title: "MIR S",
          images: [],
        ),
        SubCategoryModel(
          title: "DAR",
          images: [],
        ),
        SubCategoryModel(
          title: "CYS",
          images: [],
        ),
        SubCategoryModel(
          title: "TROP XR",
          images: [],
        ),
      ]),
      CategoryModel(title: "ANDROLOGY", image: Assets.imagesIndexIcon3, subCategories: [
        SubCategoryModel(
          title: "CER",
          images: [],
        ),
        SubCategoryModel(
          title: "DURP",
          images: [],
        ),
        SubCategoryModel(
          title: "DURL",
          images: [],
        ),
      ]),
      CategoryModel(title: "PROSTATE CANCER", image: Assets.imagesIndexIcon4, subCategories: [
        SubCategoryModel(
          title: "LUP",
          images: [],
        ),
        SubCategoryModel(
          title: "DEGA",
          images: [],
        ),
        SubCategoryModel(
          title: "CAL",
          images: [],
        ),
        SubCategoryModel(
          title: "ZEL",
          images: [],
        ),
        SubCategoryModel(
          title: "ENZ",
          images: [],
        ),
      ]),
      CategoryModel(title: "PHYSICIAN VA", image: Assets.imagesIndexIcon5, subCategories: [
        SubCategoryModel(
          title: "CON I",
          images: [],
        ),
        SubCategoryModel(
          title: "TAM",
          images: [],
        ),
        SubCategoryModel(
          title: "MOD",
          images: [],
        ),
        SubCategoryModel(
          title: "MIR",
          images: [],
        ),
        SubCategoryModel(
          title: "CER",
          images: [],
        ),
        SubCategoryModel(
          title: "DURL",
          images: [],
        ),
        SubCategoryModel(
          title: "DURP",
          images: [],
        ),
      ]),
      CategoryModel(title: "PHYSICIAN VA", image: Assets.imagesIndexIcon6, subCategories: []),
      /*{
        'category': "BPH",
        'image': Assets.imagesIndexIcon1,
        'sub_categories': [
          "CON T",
          "CON I",
          "TAM",
          "MOD",
          "SOL",
        ],
      },
      {
        'category': "BLADDER",
        'image': Assets.imagesIndexIcon2,
        'sub_categories': [
          "MIR",
          "MIR S",
          "DAR",
          "CYS",
          "TROP XR",
        ],
      },
      {
        'category': "ANDROLOGY",
        'image': Assets.imagesIndexIcon3,
        'sub_categories': [
          "CER",
          "DURP",
          "DURL",
        ],
      },
      {
        'category': "PROSTATE CANCER",
        'image': Assets.imagesIndexIcon4,
        'sub_categories': [
          "LUP",
          "DEGA",
          "CAL",
          "ZEL",
          "ENZ",
        ],
      },
      {
        'category': "PHYSICIAN VA",
        'image': Assets.imagesIndexIcon5,
        'sub_categories': [
          "CON I",
          "TAM",
          "MOD",
          "MIR",
          "CER",
          "DURL",
          "DURP",
        ],
      },
      {
        'category': "PHYSICIAN VA",
        'image': Assets.imagesIndexIcon6,
        'sub_categories': [],
      },*/
    ];

    return Scaffold(
      body: Stack(
        children: [
          CustomImage(
            path: Assets.imagesCoverImage,
            width: size.width,
            height: size.height,
          ),
          Container(
            width: size.width,
            height: size.height,
            color: Colors.white70,
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < categories.length; i++)
                  Builder(builder: (context) {
                    var category = categories[i];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 90,
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Container(
                                height: 60,
                                width: size.width * .83,
                                decoration: BoxDecoration(
                                  color: i == categories.length - 1 ? Colors.transparent : context.primaryColor,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: size.width * .28,
                                      child: Stack(
                                        children: [
                                          SvgPicture.asset(
                                            Assets.svgsArrowJoined,
                                            colorFilter: ColorFilter.mode(purpleColor, BlendMode.srcIn),
                                            fit: BoxFit.fitWidth,
                                            width: size.width * .28,
                                          ),
                                          if (i == categories.length - 1)
                                            const Center(
                                              child: Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: CustomImage(path: Assets.imagesEsurge),
                                              ),
                                            )
                                          else
                                            Padding(
                                              padding: const EdgeInsets.only(left: 0),
                                              child: Center(
                                                child: Text(
                                                  category.title,
                                                  style: context.textTheme.bodyLarge!.copyWith(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    // for (String subCategory in item['sub_categories'])
                                    for (int i = 0; i < category.subCategories.length; i++)
                                      Builder(builder: (context) {
                                        SubCategoryModel subCategory = category.subCategories[i];
                                        return Row(
                                          children: [
                                            CustomButton(
                                              type: ButtonType.tertiary,
                                              onTap: () {
                                                Navigator.push(context, getCustomRoute(child: SubCategoryScreen(subCategoryModel: subCategory), animate: false));
                                              },
                                              child: Text(
                                                subCategory.title,
                                                style: context.textTheme.bodyLarge!.copyWith(
                                                  color: purpleColor,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            if (i != category.subCategories.length - 1)
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                child: Container(
                                                  width: .5,
                                                  height: 20,
                                                  color: purpleColor,
                                                ),
                                              )
                                          ],
                                        );
                                      })
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: CustomImage(
                              path: category.image,
                              height: 90,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, getCustomRoute(child: const SplashScreen()));
              },
              icon: const CustomImage(
                path: Assets.imagesHomeIcon,
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
