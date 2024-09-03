import 'package:ecomerce_test/core/config/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/widgets/container/circle_container.dart';
import '../../../../core/config/color/app_colors.dart';
import '../controller/Home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widget/banner.dart';
import '../widget/product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppColors.primaryColor,
          automaticallyImplyLeading: false,
          title: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.primarySlate600
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.blue300,
                  child: Icon(Icons.search, color: Colors.white,),
                ),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Search On Electics",
                      style: boldText(16, color: Colors.white),),
                    SizedBox(height: 8,),
                    Text("Electronic-Shoes-Anything", style: regularText(
                        12, color: AppColors.primarySlate500),),
                  ],
                )
              ],
            ),
          ),

          actions: [
            Container(
                margin: EdgeInsets.only(right: 12),
                child: Icon(Icons.menu_outlined, size: 36,))
          ],
        ),
        body: GetBuilder<HomeController>(
          assignId: true,
          builder: (controller) {
            return Column(
              children: [

                SizedBox(height: 12,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: 1.0.sw,
                  height: 35,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.list.length,
                      itemBuilder: (context, index) {
                        return Obx(() {
                          return InkWell(
                            onTap: () {
                              controller.selectcat.value = index;
                            },
                            child: Container(
                              height: 30,
                              width: 100,
                              margin: EdgeInsets.only(right: 12),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      100),
                                  color: controller.selectcat.value ==
                                      index
                                      ? AppColors.blue300
                                      : AppColors.primarySlate600
                              ),
                              child: Center(child: Text(
                                controller.list[index], style: mediumText(
                                  14, color: AppColors.whiteColor),)),
                            ),
                          );
                        });
                      })
                ),
                SizedBox(height: 24,),
                BannerHome(),
                SizedBox(height: 50,),

                ProductList(),

              ],
            );
          },
        ),
      ),
    );
  }
}
