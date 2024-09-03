import 'package:ecomerce_test/core/config/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/common/widgets/container/circle_container.dart';
import '../../../../core/config/color/app_colors.dart';
import '../../../../core/custom_assets/assets.gen.dart';
import '../../../../core/routes/route_path.dart';
import '../controller/Home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widget/banner.dart';
import '../widget/checkout.dart';
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
            InkWell(
              onTap: (){
                showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  transitionDuration: Duration(milliseconds: 500),
                  barrierLabel:
                  MaterialLocalizations.of(context).dialogLabel,
                  barrierColor: Colors.transparent,
                  pageBuilder: (context, _, __) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 450,
                          color: AppColors.primaryColor,
                          child: Card(
                            shadowColor: Colors.grey,
                            elevation: 23,
                            color:AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),

                            child: ListView(
                              shrinkWrap: true,
                              children: <Widget>[
                                SizedBox(height: 32,),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(6),
                                          width: MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.symmetric(horizontal: 12),
                                          decoration: BoxDecoration(
                                            color:AppColors.primarySlate600,
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                              Text("Balance",style: boldText(14,color: AppColors.primarySlate500),),
                                              Text("RP 2.5000.0",style: boldText(18,color: AppColors.whiteColor),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(6),
                                          width: MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.symmetric(horizontal: 12),
                                          decoration: BoxDecoration(
                                            color:AppColors.primarySlate600,
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                              Text("MEMBER",style: boldText(14,color: AppColors.primarySlate500),),
                                              Text("Platinum",style: boldText(18,color: AppColors.whiteColor),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: (){
                                            context.pop();
                                          },
                                          child: Container(
                                              margin: EdgeInsets.only(right: 12),
                                              child: Icon(Icons.close,color: Colors.white,size: 32,)))
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        maxLines: 3,
                                        "Delivery Location",
                                        style: boldText(24,color: Colors.white),
                                      ),
                                      TextButton(onPressed: (){
                                      }, child: Text(
                                        maxLines: 3,
                                        "Manage",
                                        style: TextStyle(
                                            color: AppColors.primarySlate400,
                                            fontSize:16
                                        ),
                                      ),)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12,),

                                Container(
                                  padding: EdgeInsets.all(12),
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    color:AppColors.primarySlate600,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: [
                                          Text("Home",style: boldText(18,color: AppColors.whiteColor ),),
                                          Text("Dhaka,1310,shenanigan",style: boldText(12,color: AppColors.primarySlate700),),
                                        ],
                                      ),
                                      SizedBox(height: 12,),
                                      Container(
                                        padding: EdgeInsets.all(12),
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color:AppColors.blue300,
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text("Home",style: boldText(18,color: AppColors.primarySlate700),),
                                            Text("Dhaka,1310,shenanigan",style: boldText(12,color: AppColors.whiteColor),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 12,),
                                      Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: [
                                          Text("Home",style: boldText(18,color: AppColors.whiteColor ),),
                                          Text("Dhaka,1310,shenanigan",style: boldText(12,color: AppColors.primarySlate700),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  transitionBuilder: (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOut,
                      ).drive(Tween<Offset>(
                        begin: Offset(0, -1.0),
                        end: Offset.zero,
                      )),
                      child: child,
                    );
                  },
                );
              },
              child: Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Icon(Icons.menu_outlined, size: 36,)),
            )
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


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      transitionDuration: Duration(milliseconds: 500),
                      barrierLabel:
                      MaterialLocalizations.of(context).dialogLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      pageBuilder: (context, _, __) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: Card(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('Item 1'),
                                      onTap: () =>
                                          Navigator.of(context).pop('item1'),
                                    ),
                                    ListTile(
                                      title: Text('Item 2'),
                                      onTap: () =>
                                          Navigator.of(context).pop('item2'),
                                    ),
                                    ListTile(
                                      title: Text('Item 3'),
                                      onTap: () =>
                                          Navigator.of(context).pop('item3'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      transitionBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                          position: CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeOut,
                          ).drive(Tween<Offset>(
                            begin: Offset(0, -1.0),
                            end: Offset.zero,
                          )),
                          child: child,
                        );
                      },
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}