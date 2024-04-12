import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecomly_flutter/app/common/custom_appbar.dart';
import 'package:ecomly_flutter/app/common/background_container.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/home_tabs.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/home_tiles.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/orders/preparing.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/orders/new_orders.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/orders/ready_orders.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/orders/picked_orders.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/orders/self_deliveries.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/orders/cancelled_orders.dart';
import 'package:ecomly_flutter/app/screens/home/widgets/orders/delivered_orders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: orderList.length, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const CustomAppBar(),
      ),
      body: BackgroundContainer(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 15.h,
            ),
            const HomeTiles(),
            SizedBox(
              height: 15.h,
            ),
            HomeTabs(tabController: _tabController),
            SizedBox(
              height: 15.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              height: height * .9,
              color: Colors.transparent,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  NewOrders(),
                  Preparing(),
                  ReadyOrders(),
                  PickedOrders(),
                  SelfDeliveries(),
                  DeliveredOrders(),
                  CancelledOrders(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
