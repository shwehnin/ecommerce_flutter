import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/custom_button.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';
import 'package:ecomly_flutter/app/models/additives_model.dart';
import 'package:ecomly_flutter/app/common/custom_textfield.dart';
import 'package:ecomly_flutter/app/controllers/food_controller.dart';

class AdditivesInfo extends StatelessWidget {
  final TextEditingController additiveTitle;
  final TextEditingController additivePrice;
  const AdditivesInfo(
      {super.key, required this.additiveTitle, required this.additivePrice});

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
                  text: "Add Additives Info",
                  style: appStyle(16, kGray, FontWeight.w600),
                ),
                ReusableText(
                  text:
                      "You are required and additives info for your product if it has any",
                  style: appStyle(12, kGray, FontWeight.normal),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * .8,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextField(
                    controller: additiveTitle,
                    hintText: 'Additives Title',
                    prefixIcon: const Icon(Icons.keyboard_capslock),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextField(
                    controller: additivePrice,
                    hintText: 'Additives Price',
                    prefixIcon: const Icon(Icons.keyboard_capslock),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Obx(
                    () => controller.addivitesList.isNotEmpty
                        ? Column(
                            children: List.generate(
                                controller.addivitesList.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  decoration: BoxDecoration(
                                    color: kPrimary,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ReusableText(
                                        text: controller
                                            .addivitesList[index].title,
                                        style: appStyle(
                                            12, kLightWhite, FontWeight.normal),
                                      ),
                                      ReusableText(
                                        text:
                                            "\$ ${controller.addivitesList[index].price}",
                                        style: appStyle(
                                            12, kLightWhite, FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          )
                        : const SizedBox.shrink(),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomButton(
                    text: 'Add Additives',
                    onTap: () {
                      if (additivePrice.text.isNotEmpty &&
                          additiveTitle.text.isNotEmpty) {
                        AdditiveModel additiveModel = AdditiveModel(
                          id: controller.generateId(),
                          title: additiveTitle.text,
                          price: additivePrice.text,
                        );
                        controller.setAddivitesList = additiveModel;
                        additiveTitle.clear();
                        additivePrice.clear();
                        // Get.back();
                      } else {
                        Get.snackbar(
                          "You need data to add additives",
                          "Please fill all fields",
                          colorText: kLightWhite,
                          backgroundColor: kPrimary,
                        );
                      }
                    },
                    btnRadius: 9,
                    btnWidth: width,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
