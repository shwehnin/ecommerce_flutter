import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  const BackgroundContainer({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(20.r),
      ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? kLightWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          // image: const DecorationImage(
          //   image: AssetImage(
          //     'assets/images/food_bg.png',
          //   ),
          //   // fit: BoxFit.cover,
          // ),
        ),
        child: child,
      ),
    );
  }
}
