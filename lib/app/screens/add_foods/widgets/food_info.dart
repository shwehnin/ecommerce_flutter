import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/custom_button.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';
import 'package:ecomly_flutter/app/common/custom_textfield.dart';
import 'package:ecomly_flutter/app/controllers/food_controller.dart';

class FoodInfo extends StatelessWidget {
  final Function back;
  final Function next;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final TextEditingController preparationController;
  final TextEditingController types;
  const FoodInfo(
      {super.key,
      required this.back,
      required this.next,
      required this.titleController,
      required this.descriptionController,
      required this.priceController,
      required this.preparationController,
      required this.types});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FoodController());
    return SizedBox(
      height: height,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  text: 'Add Details',
                  style: appStyle(16, kGray, FontWeight.w600),
                ),
                ReusableText(
                  text: 'You are required to information correctly',
                  style: appStyle(12, kGray, FontWeight.normal),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'Title',
                  prefixIcon: const Icon(Icons.keyboard_capslock),
                  controller: titleController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextField(
                  hintText: 'Add Food Description',
                  prefixIcon: const Icon(Icons.abc),
                  controller: descriptionController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextField(
                  hintText: 'Food preparation time e.g 10 mins',
                  prefixIcon: Icon(Icons.abc),
                  controller: preparationController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextField(
                  hintText: 'Price with no currency e.g 100',
                  prefixIcon: Icon(Icons.money),
                  controller: priceController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  text: 'Add Food Type',
                  style: appStyle(16, kGray, FontWeight.w600),
                ),
                ReusableText(
                  text:
                      'You are required to types and tags help with food search',
                  style: appStyle(12, kGray, FontWeight.normal),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Obx(
                () => Column(
                  children: [
                    CustomTextField(
                      hintText: 'Breakfast / Lunch / Dinner / Snacks / Drinks',
                      prefixIcon: Icon(Icons.money),
                      controller: types,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    controller.types.isNotEmpty
                        ? Row(
                            children:
                                List.generate(controller.types.length, (index) {
                              return Container(
                                margin: EdgeInsets.only(right: 5.w),
                                decoration: BoxDecoration(
                                  color: kPrimary,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      right: 5.h,
                                      bottom: 5.h,
                                      top: 3.h,
                                    ),
                                    child: ReusableText(
                                      text: controller.types[index],
                                      style: appStyle(
                                          11, kLightWhite, FontWeight.normal),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          )
                        : const SizedBox.shrink(),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomButton(
                      text: 'Add Food Types',
                      onTap: () {
                        controller.setTypes = types.text;
                        types.text = "";
                      },
                      btnRadius: 6,
                      btnColor: kSecondary,
                    )
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.all(12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: "Back",
                  btnWidth: width / 2.3,
                  btnRadius: 6,
                  onTap: () {
                    back();
                  },
                ),
                CustomButton(
                  text: "Next",
                  btnWidth: width / 2.3,
                  btnRadius: 6,
                  onTap: () {
                    next();
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
