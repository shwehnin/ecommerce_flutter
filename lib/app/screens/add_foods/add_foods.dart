import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';
import 'package:ecomly_flutter/app/common/background_container.dart';
import 'package:ecomly_flutter/app/screens/add_foods/widgets/food_info.dart';
import 'package:ecomly_flutter/app/screens/add_foods/widgets/image_uploads.dart';
import 'package:ecomly_flutter/app/screens/add_foods/widgets/additives_info.dart';
import 'package:ecomly_flutter/app/screens/add_foods/widgets/all_categories.dart';

class AddFoods extends StatefulWidget {
  const AddFoods({super.key});

  @override
  State<AddFoods> createState() => _AddFoodsState();
}

class _AddFoodsState extends State<AddFoods> {
  final PageController _pageController = PageController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController preparationController = TextEditingController();
  final TextEditingController types = TextEditingController();
  final TextEditingController additiveTitle = TextEditingController();
  final TextEditingController additivePrice = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    preparationController.dispose();
    types.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        backgroundColor: kSecondary,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              text: "Welcome to restaurant panel",
              style: appStyle(18, kLightWhite, FontWeight.w600),
            ),
            ReusableText(
              text: "Fill all the required into to add food items",
              style: appStyle(14, kLightWhite, FontWeight.normal),
            ),
          ],
        ),
      ),
      body: BackgroundContainer(
        child: ListView(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: PageView(
                controller: _pageController,
                pageSnapping: false,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ChooseCategory(next: () {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  }),
                  ImageUploads(
                    back: () {
                      _pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    next: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                  ),
                  FoodInfo(
                    back: () {
                      _pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    next: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    titleController: titleController,
                    descriptionController: descriptionController,
                    priceController: priceController,
                    preparationController: preparationController,
                    types: types,
                  ),
                  AdditivesInfo(
                    additiveTitle: additiveTitle,
                    additivePrice: additivePrice,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
