import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../features/Home/presentation/controller/Home_controller.dart';
import '../../features/Splash/presentation/controller/splash_screen_controller.dart';

import '../../features/mainScreen/presentation/controller/mainScreen_controller.dart';
import '../init_dependencies.dart';


Future<Map<String, Map<String, String>>> init() async {

  // var apiclient=getIt<ApiClient>();
  // var localDb=getIt<LocalDataGet>();
  // print("calll get x");
  // final sharedPreferences = await SharedPreferences.getInstance();
  // Get.lazyPut(() => sharedPreferences);
  // Get.lazyPut(() => ApiClient(appBaseUrl: BASE_URL));


  // Repositor

  ///------------ Controller ------------------>>>

  Get.lazyPut(() => SplashScreenController(screenRepository: serviceLocator()));
  Get.lazyPut(() => HomeController(homeRepository: serviceLocator()));
  Get.lazyPut(()=> MainScreenController());






  // Retrieving localized data
  Map<String, Map<String, String>> _languages = Map();

  return _languages;
}