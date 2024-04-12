import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final int? maxLines;
  final void Function()? onEditingComplete;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.maxLines,
      this.onEditingComplete,
      this.keyboardType,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kDark,
      maxLines: maxLines ?? 1,
      onEditingComplete: onEditingComplete,
      keyboardType: keyboardType,
      controller: controller,
      style: appStyle(14, kDark, FontWeight.normal),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        isDense: true,
        hintStyle: appStyle(12, kGray, FontWeight.normal),
        contentPadding: maxLines == 1 ? EdgeInsets.zero : EdgeInsets.all(12.r),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: kGray, width: .5.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimary, width: .5.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kGray, width: .5.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimary, width: .5.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: .5.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: .5.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }
}
