import 'package:ecomerce_test/core/config/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/config/color/app_colors.dart';
import '../controller/Home_controller.dart';




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
              padding: EdgeInsets.symmetric(horizontal: 0,vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.primarySlate600
              ),
              child:Row(
                children: [
                  CircleAvatar(
                    radius:32,
                    backgroundColor: AppColors.blue300,
                    child: Icon(Icons.search,color: Colors.white,),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Search On Electics",style: boldText(16,color: Colors.white),),
                      SizedBox(height: 8,),
                      Text("Electronic-Shoes-Anything",style: regularText(12,color: AppColors.primarySlate500),),
                    ],
                  )
                ],
              ),
            ),

            actions: [
              Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Icon(Icons.menu_outlined,size: 36,))
            ],
          ),
          body: GetBuilder<HomeController>(
            builder: (controller) {
              return Column(
                children: [

                  SizedBox(height: 12,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    width: 1.0.sw,
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.blue300
                          ),
                          child: Center(child: Text("Promo",style: mediumText(14,color: AppColors.whiteColor),)),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primarySlate600
                          ),
                          child: Center(child: Text("Promo",style: mediumText(14,color: AppColors.whiteColor),)),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primarySlate600
                          ),
                          child: Center(child: Text("Promo",style: mediumText(14,color: AppColors.whiteColor),)),
                        ), Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primarySlate600
                          ),
                          child: Center(child: Text("Promo",style: mediumText(14,color: AppColors.whiteColor),)),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.primarySlate600
                          ),
                          child: Center(child: Text("Promo",style: mediumText(14,color: AppColors.whiteColor),)),
                        ),




                      ],
                    ),
                  )


                ],
              );
            },
          )
      ),
    );
  }
}
