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
      CategoryModel(
        title: "BPH",
        image: Assets.imagesIndexIcon1,
        subCategories: [
          SubCategoryModel(
            title: "CON T",
            icon: Assets.imagesContiflot,
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
            icon: Assets.imagesContifloi,
            images: [
              SubCategoryImage(image: Assets.imagesBphConi1, reference: Assets.imagesBphConi1Ref),
            ],
          ),
          SubCategoryModel(
            title: "TAM",
            icon: Assets.imagesTamdura,
            images: [
              SubCategoryImage(image: Assets.imagesBphTam1, reference: Assets.imagesBphTam1Ref),
            ],
          ),
          SubCategoryModel(
            title: "MOD",
            icon: Assets.imagesModula,
            images: [
              SubCategoryImage(image: Assets.imagesBphMod1, reference: Assets.imagesBphMod1Ref),
              SubCategoryImage(image: Assets.imagesBphMod2, reference: Assets.imagesBphMod2Ref),
            ],
          ),
          SubCategoryModel(
            title: "SOL",
            icon: Assets.imagesSolitral,
            images: [
              SubCategoryImage(image: Assets.imagesBphSol1, reference: Assets.imagesBphSol1Ref),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "BLADDER",
        image: Assets.imagesIndexIcon2,
        subCategories: [
          SubCategoryModel(
            title: "MIR",
            icon: Assets.imagesMirago,
            images: [
              SubCategoryImage(image: Assets.imagesBladderMir1, reference: Assets.imagesBladderMir1Ref),
              SubCategoryImage(image: Assets.imagesBladderMir2, reference: Assets.imagesBladderMir2Ref),
              SubCategoryImage(image: Assets.imagesBladderMir3, reference: Assets.imagesBladderMir3Ref),
            ],
          ),
          SubCategoryModel(
            title: "MIR S",
            icon: Assets.imagesMiragos,
            images: [
              SubCategoryImage(image: Assets.imagesBladderMirS1, reference: Assets.imagesBladderMirS1Ref),
              SubCategoryImage(image: Assets.imagesBladderMirS2, reference: Assets.imagesBladderMirS2Ref),
              SubCategoryImage(image: Assets.imagesBladderMirS3, reference: Assets.imagesBladderMirS3Ref),
              SubCategoryImage(image: Assets.imagesBladderMirS4),
              SubCategoryImage(image: Assets.imagesBladderMirS5, reference: Assets.imagesBladderMirS5Ref),
            ],
          ),
          SubCategoryModel(
            title: "DAR",
            icon: Assets.imagesMiragos,
            images: [
              SubCategoryImage(image: Assets.imagesBladderDar1, reference: Assets.imagesBladderDar1Ref),
            ],
          ),
          SubCategoryModel(
            title: "CYS",
            icon: Assets.imagesCystopen,
            images: [
              SubCategoryImage(image: Assets.imagesBladderCys1, reference: Assets.imagesBladderCys1Ref),
              SubCategoryImage(image: Assets.imagesBladderCys2, reference: Assets.imagesBladderCys2Ref),
            ],
          ),
          SubCategoryModel(
            title: "TROP XR",
            icon: Assets.imagesTropanxl,
            images: [
              SubCategoryImage(image: Assets.imagesBladderTropXr1, reference: Assets.imagesBladderTropXr1Ref, extra1: Assets.imagesBladderTropXr2),
              SubCategoryImage(image: Assets.imagesBladderTropXr2),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "ANDROLOGY",
        image: Assets.imagesIndexIcon3,
        subCategories: [
          SubCategoryModel(
            title: "CER",
            icon: Assets.imagesCernos,
            images: [
              SubCategoryImage(image: Assets.imagesAndrologyCer1, reference: Assets.imagesAndrologyCer1Ref),
              SubCategoryImage(image: Assets.imagesAndrologyCer2, reference: Assets.imagesAndrologyCer2Ref),
              SubCategoryImage(image: Assets.imagesAndrologyCer3, reference: Assets.imagesAndrologyCer3Ref),
            ],
          ),
          SubCategoryModel(
            title: "DURP",
            icon: Assets.imagesDuraplus,
            images: [
              SubCategoryImage(image: Assets.imagesAndrologyDurl1, reference: Assets.imagesAndrologyDurl1Ref),
              SubCategoryImage(
                image: Assets.imagesAndrologyDurl2,
                reference: Assets.imagesAndrologyDurl2Ref,
                extra1: Assets.imagesAndrologyDurl3,
                extra2: Assets.imagesAndrologyDurl4,
              ),
            ],
          ),
          SubCategoryModel(
            title: "DURL",
            icon: Assets.imagesDuralast,
            images: [
              SubCategoryImage(image: Assets.imagesAndrologyDurp1, reference: Assets.imagesAndrologyDurp1Ref),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "PROSTATE CANCER",
        image: Assets.imagesIndexIcon4,
        subCategories: [
          SubCategoryModel(
            title: "LUP",
            icon: Assets.imagesLupride,
            images: [
              SubCategoryImage(image: Assets.imagesProstateLup1, reference: Assets.imagesProstateLup1Ref),
              SubCategoryImage(image: Assets.imagesProstateLup2, reference: Assets.imagesProstateLup2Ref),
            ],
          ),
          SubCategoryModel(
            title: "DEGA",
            icon: Assets.imagesDegapride,
            images: [
              SubCategoryImage(image: Assets.imagesProstateDega1),
              SubCategoryImage(
                image: Assets.imagesProstateDega2,
                reference: Assets.imagesProstateDega2Ref,
                extra1: Assets.imagesProstateDega2Extra1,
                extra2: Assets.imagesProstateDega2Extra2,
              ),
              SubCategoryImage(image: Assets.imagesProstateDega3),
              SubCategoryImage(image: Assets.imagesProstateDega4, reference: Assets.imagesProstateDega4Ref),
            ],
          ),
          SubCategoryModel(
            title: "CAL",
            icon: Assets.imagesCaluran,
            images: [
              SubCategoryImage(image: Assets.imagesProstateCal1),
            ],
          ),
          SubCategoryModel(
            title: "ZEL",
            icon: Assets.imagesZelgor,
            images: [
              SubCategoryImage(image: Assets.imagesProstateZel1, reference: Assets.imagesProstateZel1Ref),
              SubCategoryImage(image: Assets.imagesProstateZel2, reference: Assets.imagesProstateZel2Ref),
              SubCategoryImage(image: Assets.imagesProstateZel2, reference: Assets.imagesProstateZel2Ref),
              SubCategoryImage(image: Assets.imagesProstateZel3, reference: Assets.imagesProstateZel3Ref, extra1: Assets.imagesProstateZel3Extra),
            ],
          ),
          SubCategoryModel(
            title: "ENZ",
            icon: Assets.imagesEnzyl,
            images: [
              SubCategoryImage(image: Assets.imagesProstateEnz1),
              SubCategoryImage(image: Assets.imagesProstateEnz2),
              SubCategoryImage(image: Assets.imagesProstateEnz3, reference: Assets.imagesProstateEnz3Ref),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "PHYSICIAN VA",
        image: Assets.imagesIndexIcon5,
        subCategories: [
          SubCategoryModel(
            title: "CON I",
            icon: Assets.imagesContiflot,
            images: [],
          ),
          SubCategoryModel(
            title: "TAM",
            icon: Assets.imagesTamdura,
            images: [],
          ),
          SubCategoryModel(
            title: "MOD",
            icon: Assets.imagesModula,
            images: [],
          ),
          SubCategoryModel(
            title: "MIR",
            icon: Assets.imagesMirago,
            images: [],
          ),
          SubCategoryModel(
            title: "CER",
            icon: Assets.imagesCernos,
            images: [],
          ),
          SubCategoryModel(
            title: "DURL",
            icon: Assets.imagesDuralast,
            images: [],
          ),
          SubCategoryModel(
            title: "DURP",
            icon: Assets.imagesDuraplus,
            images: [],
          ),
        ],
      ),
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
                                                Navigator.push(
                                                    context,
                                                    getCustomRoute(
                                                        child: SubCategoryScreen(
                                                          categoryModel: category,
                                                          index: i,
                                                        ),
                                                        animate: false));
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
