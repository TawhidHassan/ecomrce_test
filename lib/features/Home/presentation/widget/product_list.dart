import 'package:ecomerce_test/core/config/color/app_colors.dart';
import 'package:ecomerce_test/core/config/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                maxLines: 3,
                "Electric Choice",
                style: boldText(24,color: Colors.white),
              ),
              Text(
                maxLines: 3,
                "Show all",
                style: TextStyle(
                    color: AppColors.primarySlate400,
                    fontSize:16
                ),
              ),
            ],
          ),
        ),


        SizedBox(height: 12,),

        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context , index){
                return Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 160.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                            color: Color(0xff32363F),
                            borderRadius: BorderRadius.circular(16),
                            image:  DecorationImage(image: AssetImage("assets/images/camera.png"))
                        ),),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maxLines: 3,
                              "Sony alpha line\n mark body ony ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp
                              ),
                            ),

                            Text(
                              maxLines: 3,
                              "RP 24000.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
