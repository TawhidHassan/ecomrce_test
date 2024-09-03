
import 'package:get/get.dart';
import '../../../../core/network/connection_checker.dart';
import '../../domain/repositories/Home_repository.dart';
import '../../domain/usecase/Home_use_case.dart';


class HomeController extends GetxController implements GetxService{
  final HomeRepository? homeRepository;
  HomeController( { this.homeRepository });

  List<String> list=["Promo","Best Deals","Windy Basic","Sports","Electronic"];
  List<String> gadgetList=["Latest","Popular","Top Deals",];

  final selectcat=0.obs;


}

