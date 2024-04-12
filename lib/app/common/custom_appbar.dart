import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100.h,
      padding: EdgeInsets.fromLTRB(12.w, 25.h, 12.w, 0),
      color: kSecondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: kWhite,
                backgroundImage: const AssetImage('assets/images/food_bg.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                      text: 'Kings Foods',
                      style: appStyle(14, kWhite, FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: ReusableText(
                        text: 'Build (1), Kunchan 7 Street, (4) Ward',
                        style: appStyle(12, kWhite, FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Icon(Icons.open_in_new)
        ],
      ),
    );
  }
}
