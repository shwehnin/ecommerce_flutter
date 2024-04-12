import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/custom_button.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';
import 'package:ecomly_flutter/app/controllers/uploader_controller.dart';

class ImageUploads extends StatelessWidget {
  final Function() back;
  final Function() next;
  const ImageUploads({super.key, required this.back, required this.next});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UploaderController());
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
                  text: "Upload Images",
                  style: appStyle(16, kGray, FontWeight.w600),
                ),
                ReusableText(
                  text:
                      "You are required to upload at least 2 images to proceed.",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.pickImage('one');
                        },
                        child: Obx(
                          () => Container(
                            height: 120.h,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: kGrayLight),
                            ),
                            child: controller.imageOneUrl == ''
                                ? Center(
                                    child: ReusableText(
                                      text: 'Upload Image',
                                      style:
                                          appStyle(16, kDark, FontWeight.bold),
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: Image.network(
                                      controller.imageOneUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.pickImage('two');
                        },
                        child: Obx(
                          () => Container(
                            height: 120.h,
                            width: width / 2.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: kGrayLight),
                            ),
                            child: controller.imageTwoUrl == ''
                                ? Center(
                                    child: ReusableText(
                                      text: 'Upload Image',
                                      style:
                                          appStyle(16, kDark, FontWeight.bold),
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      controller.imageTwoUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     controller.pickImage('three');
                      //   },
                      //   child: Obx(
                      //     () => Container(
                      //       height: 120.h,
                      //       width: width / 2.3,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10.r),
                      //         border: Border.all(color: kGrayLight),
                      //       ),
                      //       child: controller.imageThreeUrl == ''
                      //           ? Center(
                      //               child: ReusableText(
                      //                 text: 'Upload Image',
                      //                 style:
                      //                     appStyle(16, kDark, FontWeight.bold),
                      //               ),
                      //             )
                      //           : ClipRRect(
                      //               borderRadius: BorderRadius.circular(10),
                      //               child: Image.network(
                      //                 controller.imageThreeUrl,
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //     ),
                      //   ),
                      // ),
                      // GestureDetector(
                      //   onTap: () {
                      //     controller.pickImage('four');
                      //   },
                      //   child: Obx(
                      //     () => Container(
                      //       height: 120.h,
                      //       width: width / 2.3,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10.r),
                      //         border: Border.all(color: kGrayLight),
                      //       ),
                      //       child: controller.imageFourUrl == ''
                      //           ? Center(
                      //               child: ReusableText(
                      //                 text: 'Upload Image',
                      //                 style:
                      //                     appStyle(16, kDark, FontWeight.bold),
                      //               ),
                      //             )
                      //           : ClipRRect(
                      //               borderRadius: BorderRadius.circular(10),
                      //               child: Image.network(
                      //                 controller.imageFourUrl,
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //     ),
                      //   ),
                      // ),
                      // GestureDetector(
                      //   onTap: () {
                      //     controller.pickImage('logo');
                      //   },
                      //   child: Obx(
                      //     () => Container(
                      //       height: 120.h,
                      //       width: width / 2.3,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10.r),
                      //         border: Border.all(color: kGrayLight),
                      //       ),
                      //       child: controller.logoUrl == ''
                      //           ? Center(
                      //               child: ReusableText(
                      //                 text: 'Upload Image',
                      //                 style:
                      //                     appStyle(16, kDark, FontWeight.bold),
                      //               ),
                      //             )
                      //           : ClipRRect(
                      //               borderRadius: BorderRadius.circular(10),
                      //               child: Image.network(
                      //                 controller.logoUrl,
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //     ),
                      //   ),
                      // ),
                      // GestureDetector(
                      //   onTap: () {
                      //     controller.pickImage('cover');
                      //   },
                      //   child: Obx(
                      //     () => Container(
                      //       height: 120.h,
                      //       width: width / 2.3,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10.r),
                      //         border: Border.all(color: kGrayLight),
                      //       ),
                      //       child: controller.coverUrl == ''
                      //           ? Center(
                      //               child: ReusableText(
                      //                 text: 'Upload Image',
                      //                 style:
                      //                     appStyle(16, kDark, FontWeight.bold),
                      //               ),
                      //             )
                      //           : ClipRRect(
                      //               borderRadius: BorderRadius.circular(10),
                      //               child: Image.network(
                      //                 controller.coverUrl,
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 120.h,
                        width: width / 2.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: kGrayLight),
                        ),
                        child: Center(
                          child: ReusableText(
                            text: 'Upload Image',
                            style: appStyle(16, kDark, FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 120.h,
                        width: width / 2.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: kGrayLight),
                        ),
                        child: Center(
                          child: ReusableText(
                            text: 'Upload Image',
                            style: appStyle(16, kDark, FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        text: "Back",
                        btnWidth: width / 2.3,
                        btnRadius: 9,
                        onTap: () {
                          back();
                        },
                      ),
                      CustomButton(
                        text: "Next",
                        btnWidth: width / 2.3,
                        btnRadius: 9,
                        onTap: () {
                          next();
                          // if (controller.images.length > 1) {
                          //   next();
                          // } else {
                          //   Get.snackbar(
                          //     colorText: kLightWhite,
                          //     backgroundColor: kPrimary,
                          //     snackPosition: SnackPosition.TOP,
                          //     "Upload required images",
                          //     "Please upload at least 2 images",
                          //   );
                          // }
                        },
                      )
                    ],
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
