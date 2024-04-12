import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/constants/uidata.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';
import 'package:ecomly_flutter/app/common/background_container.dart';
import 'package:ecomly_flutter/app/screens/food/widgets/food_tile.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        backgroundColor: kSecondary,
        title: ReusableText(
          text: 'Food List',
          style: appStyle(
            18,
            kLightWhite,
            FontWeight.w600,
          ),
        ),
      ),
      body: BackgroundContainer(
          child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return FoodTile(food: foods[index]);
          },
        ),
      )),
    );
  }
}
