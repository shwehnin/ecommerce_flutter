import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';

class FoodTile extends StatelessWidget {
  final Map<String, dynamic> food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
      child: Container(
        decoration: BoxDecoration(
          color: kOffWhite,
          borderRadius: BorderRadius.circular(12.r),
        ),
        height: 76.h,
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: SizedBox(
                    width: 62.w,
                    height: 62.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.network(
                        food['imageUrl'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ReusableText(
                      text: food['title'],
                      style: appStyle(15, kDark, FontWeight.w500),
                    ),
                    ReusableText(
                      text: "Delivery Time: ${food['time']}",
                      style: appStyle(12, kGray, FontWeight.w500),
                    ),
                    SizedBox(
                      height: 16.h,
                      width: width * .7,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: food['additives'].length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                right: 5.w,
                              ),
                              decoration: BoxDecoration(
                                color: kSecondaryLight,
                                borderRadius: BorderRadius.circular(9.r),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                  ),
                                  child: ReusableText(
                                    text: food['additives'][index]['title'],
                                    style: appStyle(11, kGray, FontWeight.w400),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                )
              ],
            ),
            Positioned(
              right: 5.w,
              top: 5.h,
              child: Container(
                height: 19.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: kPrimary,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: ReusableText(
                    text: "\$${food['price'].toStringAsFixed(2)}",
                    style: appStyle(12, kLightWhite, FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
