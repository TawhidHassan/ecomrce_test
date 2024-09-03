
import 'package:get/get.dart';
import '../../domain/usecase/carts_use_case.dart';


class CartsController extends GetxController implements GetxService{
  CartsUseCase? cartsUseCase;
  CartsController({ cartsUseCase });


}

