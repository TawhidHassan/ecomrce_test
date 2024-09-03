import 'package:ecomerce_test/features/carts/presentation/pages/carts_page.dart';
import 'package:ecomerce_test/features/feeds/presentation/pages/feeds_page.dart';
import 'package:ecomerce_test/features/likes/presentation/pages/likes_page.dart';
import 'package:ecomerce_test/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Dependenci Injection/init_dependencies.dart';
import '../../features/Home/presentation/pages/Home_page.dart';
import '../LocalDataBase/localdata.dart';
import '/core/routes/route_path.dart';
import '../../features/Error/presentation/error_page.dart';
import '../../features/Splash/presentation/Pages/splash_page.dart';
import '../../features/mainScreen/presentation/pages/mainScreen_page.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'home');
  static final _shellNavigatorFeedKey =
      GlobalKey<NavigatorState>(debugLabel: 'feed');
  static final _shellNavigatorLikeKey =
  GlobalKey<NavigatorState>(debugLabel: 'like');
  static final _shellNavigatorCartKey =
      GlobalKey<NavigatorState>(debugLabel: 'cart');
  static final _shellNavigatorProfileKey =
      GlobalKey<NavigatorState>(debugLabel: 'profile');

  static final GoRouter routerx = GoRouter(
    initialLocation: Routes.splashScreenPath,
    // navigatorKey: Get.key,
    debugLogDiagnostics: true,
    routes: [
      /// splash
      GoRoute(
        name: Routes.splashScreen,
        path: Routes.splashScreenPath,
        builder: (context, state) => SplashPage(),
        redirect:  (context, state) async {
          DBHelper dbHelper=serviceLocator();
          // if(await dbHelper.onbordingCheck()){
          //   // context.goNamed( Routes.mainPage);
          //   // Logger().w("sss");
          //   AppRouter.router.goNamed(Routes.mainPage);
          //
          //   // context.goNamed(Routes.mainPage);
          //   // return Routes.MainPagePath;
          // }else{
          //   // Logger().w("ddd");
          //   // context.goNamed( Routes.LoginPage);
          //   AppRouter.router.goNamed(Routes.onboardingScreen);
          //   // context.goNamed(Routes.onboardingScreen);
          //   // return Routes.onboardingScreenPath;
          // }
        },
      ),


      ///Bottom nav bar
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // the UI shell
          return MainPage(navigationShell: navigationShell);
        },
        branches: [
          // first branch (A)
          StatefulShellBranch(
            initialLocation: Routes.mainPagePath,
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              // top route inside branch
              GoRoute(
                  name: Routes.mainPage,
                  path: Routes.mainPagePath,
                  pageBuilder: (context, state) => const NoTransitionPage(
                        child: HomePage(),
                  ),
                routes: []
              ),

            ],
          ),

          //------------------------------------Feeds section
          StatefulShellBranch(
            navigatorKey: _shellNavigatorFeedKey,
            routes: [
              // top route inside branch
              GoRoute(
                name: Routes.feedsPage,
                path: Routes.feedsPagePath,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: FeedsPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorLikeKey,
            routes: [
              // top route inside branch
              GoRoute(
                name: Routes.likePage,
                path: Routes.likePagePath,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: LikesPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCartKey,
            routes: [
              // top route inside branch
              GoRoute(
                name: Routes.chatPage,
                path: Routes.chatPagePath,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: CartsPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProfileKey,
            routes: [
              // top route inside branch
              GoRoute(
                name: Routes.profilePage,
                path: Routes.profilePagePath,
                pageBuilder: (context, state) =>  NoTransitionPage(
                  child: ProfilePage(),
                ),

                routes: [

                ]

              ),
            ],
          ),
        ],
      ),

      GoRoute(
        name: Routes.ErrorPage,
        path: Routes.ErrorPagePath,
        pageBuilder: (context, state) => NoTransitionPage(
          child: ErrorPage(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );

  static GoRouter get router => routerx;
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
