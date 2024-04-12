import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:ecomly_flutter/app/constants/uidata.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';
import 'package:ecomly_flutter/app/controllers/food_controller.dart';

class ChooseCategory extends HookWidget {
  final Function() next;
  const ChooseCategory({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FoodController());
    return Container(
      height: height,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.w, left: 16.h, bottom: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  text: 'Pick Category',
                  style: appStyle(16, kGray, FontWeight.w600),
                ),
                ReusableText(
                  text:
                      'You are to pick a category to continue adding a food item',
                  style: appStyle(12, kGray, FontWeight.normal),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * .8,
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      controller.setCategory = categories[index]['_id'];
                      next();
                    },
                    leading: CircleAvatar(
                      backgroundColor: kPrimary,
                      radius: 18.r,
                      child: Image.network(
                        categories[index]['imageUrl'],
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: ReusableText(
                      text: categories[index]['title'],
                      style: appStyle(
                        12,
                        kGray,
                        FontWeight.normal,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kGray,
                      size: 15.sp,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
