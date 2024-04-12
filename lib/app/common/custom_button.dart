import 'package:flutter/widgets.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final double? btnWidth;
  final double? btnHeight;
  final double? btnRadius;
  final Color? btnColor;
  final String text;
  const CustomButton(
      {super.key,
      this.onTap,
      this.btnWidth,
      this.btnHeight,
      this.btnRadius,
      this.btnColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth ?? width,
        height: btnHeight ?? 28.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnRadius ?? 12.r),
          color: btnColor ?? kPrimary,
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appStyle(12, kLightWhite, FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
