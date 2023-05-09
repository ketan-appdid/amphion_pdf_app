import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_template/services/extensions.dart';
import 'package:flutter_template/services/route_helper.dart';
import 'package:flutter_template/views/base/custom_image.dart';
import 'package:flutter_template/views/screens/start_screen/reference_screen.dart';

import '../../../data/models/response/category.dart';

class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({Key? key, required this.subCategoryModel}) : super(key: key);
  final SubCategoryModel subCategoryModel;

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.run(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Map> bphContiData = [
      {
        'image': Assets.imagesBphConti1,
        'reference': null,
      },
      {
        'image': Assets.imagesBphConti2,
        'reference': Assets.imagesBphConti2Ref,
      },
      {
        'image': Assets.imagesBphConti3,
        'reference': Assets.imagesBphConti3Ref,
      },
      {
        'image': Assets.imagesBphConti4,
        'reference': Assets.imagesBphConti4Ref,
      },
      {
        'image': Assets.imagesBphConti5,
        'reference': Assets.imagesBphConti5Ref,
      },
      {
        'image': Assets.imagesBphConti6,
        'reference': Assets.imagesBphConti6Ref,
      },
    ];
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
            itemCount: widget.subCategoryModel.images.length,
            itemBuilder: (context, int index) {
              return Stack(
                children: [
                  CustomImage(
                    path: widget.subCategoryModel.images[index].image,
                    fit: BoxFit.fill,
                    height: size.height,
                    width: size.width,
                  ),
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
                  onPressed: () {},
                  icon: const CustomImage(
                    path: Assets.imagesPlusIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
          if (pageController.hasClients)
            if (widget.subCategoryModel.images[pageController.page!.round()].reference.isValid)
              Positioned(
                right: 60,
                bottom: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: widget.subCategoryModel.images[pageController.page!.round()].reference!)));
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
