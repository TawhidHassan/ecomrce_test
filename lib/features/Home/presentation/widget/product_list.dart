import 'package:ecomerce_test/core/config/color/app_colors.dart';
import 'package:ecomerce_test/core/config/util/text_style.dart';
import 'package:ecomerce_test/core/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'checkout.dart';

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
              TextButton(onPressed: (){
                context.pushNamed(Routes.gadgetsDayPage);
              }, child: Text(
                maxLines: 3,
                "Show all",
                style: TextStyle(
                    color: AppColors.primarySlate400,
                    fontSize:16
                ),
              ),)
            ],
          ),
        ),


        SizedBox(height: 20,),

        SizedBox(
          height: 240.h,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context , index){
                return InkWell(
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 8,top: 8,right: 8),
                          alignment: Alignment.topCenter,
                          height: 160.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color: Color(0xff32363F),
                              borderRadius: BorderRadius.circular(16),
                              image:  DecorationImage(image: AssetImage("assets/images/camera.png"))
                          ),

                          child:  Row(
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
                                child: Text("New",style: TextStyle(
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
                                    Icon(Icons.star,color: Color(0xffFFB500),size: 14,),
                                    Text("4.8",style: TextStyle(
                                        fontSize: 12,

                                    ),),
                                  ],
                                ),
                              )
                            ],
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
                                "Sony alpha line mark\nbody only",
                                 style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14
                                ),
                              ),
                             SizedBox(height: 4,),
                              Text(
                                "RP 24000.00",
                                style: TextStyle(
                                    color: AppColors.primarySlate300,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
