
import 'package:get/get.dart';
import '../../domain/usecase/likes_use_case.dart';


class LikesController extends GetxController implements GetxService{
  LikesUseCase? likesUseCase;
  LikesController({ likesUseCase });


}

