import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import '../../../../core/config/color/app_colors.dart';
import '../../../../core/config/util/style.dart';
import '../../../../core/custom_assets/assets.gen.dart';

class MainPage extends StatefulWidget {

  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  void _goBranch(int index, BuildContext context) {
    if (index == 3) {
      Future.delayed(Duration.zero, () {
        // Get.find<CartController>().onInit();
        // Get.find<CartController>().getCartData();
      });
    }

    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }


  int _currentIndex = 0;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _motionTabBarController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar:

        BottomNavigationBar(
          backgroundColor: AppColors.primarySlate600,
          showSelectedLabels: true,
          enableFeedback: true,
          iconSize: 45,
          showUnselectedLabels: true,
          currentIndex: widget.navigationShell.currentIndex,
          unselectedLabelStyle: robotoMedium.copyWith(
            fontSize: 12,
            color:  AppColors.whiteColor,
          ),
          selectedLabelStyle:  robotoMedium.copyWith(
            fontSize: 12,
            color:  AppColors.whiteColor,
          ),
          // unselectedItemColor:  AppColors.primarySlate700,
          selectedItemColor: AppColors.whiteColor,
          // selectedIndex:
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Assets.icons.icHome.svg(color: AppColors.primarySlate400),
              activeIcon: Assets.icons.icHome.svg(color: AppColors.whiteColor)
            ),


            BottomNavigationBarItem(
                label: "Feeds",
                icon:Assets.icons.icInbox.svg(color: AppColors.primarySlate400),
                activeIcon: Assets.icons.icInbox.svg(color: AppColors.whiteColor),

            ),

            BottomNavigationBarItem(
                label: "Likes",
              icon:Assets.icons.icHeart.svg(color: AppColors.primarySlate400,height: 24),
              activeIcon: Assets.icons.icHeart.svg(color: AppColors.whiteColor,height: 24),
            ),
            BottomNavigationBarItem(
                label: "carts",
              icon:Icon(Icons.shopping_cart_outlined,color: AppColors.primarySlate400,size: 24,),
              activeIcon: Icon(Icons.shopping_cart_outlined,color: AppColors.whiteColor,size: 24,),
            ),BottomNavigationBarItem(
                label: "Profile",
              icon:Assets.icons.icFamilyBetal.svg(color: AppColors.primarySlate400),
              activeIcon: Assets.icons.icFamilyBetal.svg(color: AppColors.whiteColor),
            ),
            // NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
            // NavigationDestination(label: 'Image Generate', icon: Icon(Icons.image)),
          ],
          // destinations: const [
          //
          // ],
          onTap: (index) => _goBranch(index, context),
          // onDestinationSelected: ,

        )
    );
  }
}





