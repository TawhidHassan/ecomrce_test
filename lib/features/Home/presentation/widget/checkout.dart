import 'package:ecomerce_test/core/common/widgets/Button/elevated_button.dart';
import 'package:ecomerce_test/core/config/color/app_colors.dart';
import 'package:ecomerce_test/core/config/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 6),
      child: Column(

        // padding: EdgeInsets.only(top: 12,left: 12,right: 12),
        children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Shop Cart",style: semiBoldText(18,color: Colors.white),),
                 IconButton(onPressed: (){
                   context.pop();
                 }, icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,size: 36,))
               ],
             ),
          Expanded(
            flex: 14,
            child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context , index){
              return Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff1D1E22),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff32363F),
                              image: DecorationImage(image: AssetImage(
                                  "assets/images/camera.png"
                              ))
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8,),
                            Text("Edifiers Headphone",style: mediumText(14,color: Colors.white) ,) ,
                            SizedBox(height: 8,),

                            Text("RP 230320.00",style: semiBoldText(16,color: Colors.white) ,),

                            Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)
                              ),
                                value: false, onChanged: (v){

                            })

                          ],
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){

                    }, icon: Icon(Icons.close,color: Color(0xff32363F),))
                  ],
                ),
              );
            }),
          ),
          Expanded(
            flex: 2,
            child: CustomElevatedButton(
              onPressed: () {  },
              titleText: "Checkout 3",
              buttonColor: AppColors.blue300,

            ),
          ),
          SizedBox(height: 12,),


        ],
      ),
    );
  }
}
