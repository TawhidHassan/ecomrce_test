import 'package:ecomerce_test/core/config/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/common/widgets/container/circle_container.dart';
import '../../../../core/config/color/app_colors.dart';
import '../controller/Home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
class BannerHome extends StatefulWidget {
  const BannerHome({super.key});

  @override
  State<BannerHome> createState() => _BannerHomeState();
}

class _BannerHomeState extends State<BannerHome> {
  int currentPosition = 0;

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context,
                  int itemIndex, int pageIndex){
                return Container(
                  padding: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color:Color(0xffD5C3FB),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Try bold experience",
                              maxLines: 3,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 24
                              ),),

                            SizedBox(height: 8,),

                            Text("Sony think difference",
                              maxLines: 3,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12
                              ),),
                            SizedBox(height: 12,),
                            CircleContainer(
                              width: 120,
                              borderRadius: 100,
                              color: Colors.black,
                              title: "Discount 40%",
                              titleColor: Colors.white,

                            )
                          ],
                        ),
                      ),
                      Image.asset("assets/images/camera.png",height: 150,width: 180,fit: BoxFit.fill,)

                    ],
                  ),
                );
              },

              options: CarouselOptions(
                height: 180,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPosition = index;
                    setState(() {
                      activeIndex = index;
                    });
                  });
                },
                enableInfiniteScroll: true,
                autoPlay: false,
                viewportFraction: 1,

              ),
            ),
            Positioned(
              bottom: -20,
              left: 0,
              right: 0,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count:4,
                    effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: AppColors.whiteColor,
                      dotColor: Colors.grey,
                    ),
                  )
              ),
            ),


          ],
        ),




      ],
    );
  }
}
