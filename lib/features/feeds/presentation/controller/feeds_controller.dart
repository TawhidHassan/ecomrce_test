
import 'package:get/get.dart';
import '../../domain/usecase/feeds_use_case.dart';


class FeedsController extends GetxController implements GetxService{
  FeedsUseCase? feedsUseCase;
  FeedsController({ feedsUseCase });


}

