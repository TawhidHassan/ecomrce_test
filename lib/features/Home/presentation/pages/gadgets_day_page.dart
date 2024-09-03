import 'package:ecomerce_test/features/Home/presentation/controller/Home_controller.dart';
import 'package:ecomerce_test/features/Home/presentation/widget/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/config/color/app_colors.dart';
import '../../../../core/config/util/text_style.dart';

class GadgetsDayPage extends StatelessWidget {
  const GadgetsDayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {
          context.pop();
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,),),
        title: Text(
          "Gadget day", style: semiBoldText(20, color: Colors.white),),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 12),
              child: Icon(Icons.search, size: 36,))
        ],
      ),

      body: GetBuilder<HomeController>(builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 35,
                child: Row(
                  children: [
                    Expanded(

                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.gadgetList.length,
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
                                    controller.gadgetList[index], style: mediumText(
                                      14, color: AppColors.whiteColor),)),
                                ),
                              );
                            });
                          }),
                      flex: 4,
                    ),
                     SizedBox(width: 12,),

                    IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_sharp))

                  ],
                )
            ),

            SizedBox(height: 24,),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(left: 12, right: 12),
                shrinkWrap: true,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1,
                    mainAxisExtent: 240
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  ///------------product card-----------///
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          showModalBottomSheet<void>(
                            backgroundColor: Color(0xff101014),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),)
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return Checkout();
                            },
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 8, top: 8, right: 8),
                          alignment: Alignment.topCenter,
                          height: 160.h,
                          decoration: BoxDecoration(
                              color: Color(0xff32363F),
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/camera.png"))
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 20.h,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xffE3F7FB)
                                ),
                                child: Text("New", style: TextStyle(
                                    fontSize: 12
                                ),),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 20.h,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xffFDF8D9)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, color: Color(0xffFFB500),
                                      size: 14,),
                                    Text("4.8", style: TextStyle(
                                      fontSize: 12,

                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 4,),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maxLines: 3,
                              textAlign: TextAlign.start,
                              "Meta vision ultra",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "RP 24000.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}



