import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:ecomly_flutter/app/common/tab_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Container(
        height: 35.h,
        width: width,
        decoration: BoxDecoration(
          color: kOffWhite,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: TabBar(
          controller: _tabController,
          indicator: BoxDecoration(
            color: kPrimary,
            borderRadius: BorderRadius.circular(25),
          ),
          tabs: List.generate(orderList.length, (index) {
            return TabWidget(text: orderList[index]);
          }),
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: EdgeInsets.zero,
          labelStyle: appStyle(12, kLightWhite, FontWeight.w600),
          unselectedLabelStyle: appStyle(12, kGrayLight, FontWeight.normal),
          labelColor: kLightWhite,
          dividerColor: Colors.transparent,
          unselectedLabelColor: kPrimary,
        ),
      ),
    );
  }
}
