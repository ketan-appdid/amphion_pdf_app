import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_template/services/extensions.dart';
import 'package:flutter_template/services/route_helper.dart';
import 'package:flutter_template/views/base/custom_image.dart';
import 'package:flutter_template/views/screens/start_screen/reference_screen.dart';

import '../../../data/models/response/category.dart';
import '../../base/animations/slide_animation.dart';

class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({Key? key, required this.categoryModel, required this.index}) : super(key: key);
  // final SubCategoryModel subCategoryModel;
  final CategoryModel categoryModel;
  final int index;

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  PageController pageController = PageController(initialPage: 0);
  bool viewSubCategories = false;

  @override
  void initState() {
    super.initState();
    Timer.run(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SubCategoryModel subCategoryModel = widget.categoryModel.subCategories[widget.index];
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              Future.delayed(const Duration(milliseconds: 500), () {
                setState(() {});
              });
            },
            itemCount: subCategoryModel.images.length,
            itemBuilder: (context, int index) {
              return Stack(
                children: [
                  CustomImage(
                    path: subCategoryModel.images[index].image,
                    fit: BoxFit.fill,
                    height: size.height,
                    width: size.width,
                  ),
                  if (pageController.hasClients) //
                    if (pageController.position.haveDimensions)
                      Builder(builder: (context) {
                        log(subCategoryModel.title.getIfValid);
                        if (subCategoryModel.title == 'TROP XR') {
                          if (pageController.page!.round() == 0) {
                            return Positioned(
                              bottom: size.height * .145,
                              left: size.width * .085,
                              // right: size.width * .12,
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Ink(
                                    height: size.height * .38,
                                    width: size.width * .415,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                        }
                        if (subCategoryModel.title == 'DURP') {
                          if (pageController.page!.round() == 1) {
                            return Positioned(
                              bottom: size.height * .23,
                              left: size.width * .13,
                              right: size.width * .12,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                      },
                                      child: Ink(
                                        height: size.height * .28,
                                        width: size.width * .32,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra2!)));
                                      },
                                      child: Ink(
                                        height: size.height * .28,
                                        width: size.width * .34,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }
                        if (subCategoryModel.title == 'DEGA') {
                          if (pageController.page!.round() == 1) {
                            return Positioned(
                              bottom: size.height * .09,
                              left: size.width * .07,
                              right: size.width * .09,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                      },
                                      child: Ink(
                                        height: size.height * .36,
                                        width: size.width * .38,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra2!)));
                                      },
                                      child: Ink(
                                        height: size.height * .36,
                                        width: size.width * .4,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }
                        if (subCategoryModel.title == 'ZEL') {
                          if (pageController.page!.round() == 3) {
                            return Positioned(
                              bottom: size.height * .05,
                              left: size.width * .265,
                              // right: size.width * .12,
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Ink(
                                    height: size.height * .1,
                                    width: size.width * .47,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                        }
                        return const SizedBox.shrink();
                      }),
                ],
              );
            },
          ),
          Positioned(
            left: 60,
            bottom: 0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const CustomImage(
                    path: Assets.imagesHomeIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      viewSubCategories = !viewSubCategories;
                    });
                  },
                  icon: const CustomImage(
                    path: Assets.imagesPlusIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
          if (viewSubCategories)
            Positioned(
              left: 180,
              bottom: 10,
              child: CustomSlideAnimation(
                curve: Curves.ease,
                start: Alignment.bottomCenter,
                child: SizedBox(
                  height: size.height * .07,
                  width: size.width * .7,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        Assets.svgsContainerBg,
                        height: size.height * .07,
                        width: size.width * .7,
                      ),
                      Center(
                        child: SizedBox(
                          height: size.height * .07,
                          width: size.width * .65,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Expanded(child: CustomImage(path: Assets.imagesContiflot)),
                                Container(height: 30, width: 1, color: Colors.black45),
                                const Expanded(child: CustomImage(path: Assets.imagesContifloi)),
                                Container(height: 30, width: 1, color: Colors.black45),
                                const Expanded(child: CustomImage(path: Assets.imagesTamdura)),
                                Container(height: 30, width: 1, color: Colors.black45),
                                const Expanded(child: CustomImage(path: Assets.imagesModula)),
                                Container(height: 30, width: 1, color: Colors.black45),
                                const Expanded(child: CustomImage(path: Assets.imagesSolitral)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (pageController.hasClients)
            if (subCategoryModel.images[pageController.page!.round()].reference.isValid)
              Positioned(
                right: 60,
                bottom: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].reference!)));
                  },
                  icon: const CustomImage(
                    path: Assets.imagesRefIcon,
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
