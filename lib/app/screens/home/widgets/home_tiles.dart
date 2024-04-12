import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/home_title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/screens/food/food_list.dart';
import 'package:ecomly_flutter/app/screens/add_foods/add_foods.dart';

class HomeTiles extends StatelessWidget {
  const HomeTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      height: 70.h,
      decoration: BoxDecoration(
          color: kOffWhite, borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeTitle(
              onTap: () {
                Get.to(
                  const AddFoods(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 900),
                );
              },
              text: 'Add Foods',
              icon: Icons.fastfood_rounded,
            ),
            HomeTitle(
              onTap: () {},
              text: 'Wallet',
              icon: Icons.wallet_rounded,
            ),
            HomeTitle(
              onTap: () {
                Get.to(
                  const FoodList(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 900),
                );
              },
              text: 'Foods',
              icon: Icons.food_bank_rounded,
            ),
            HomeTitle(
              onTap: () {},
              text: 'Self Deliveries',
              icon: Icons.fire_truck_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
