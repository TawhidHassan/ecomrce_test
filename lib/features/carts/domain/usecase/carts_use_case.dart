
import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../entities/carts.dart';
import '../repositories/carts_repository.dart';
import '../../../../core/usecase/usecase.dart';


class CartsUseCase implements UseCase<Carts, GetCartsParams> {
final CartsRepository? cartsRepository;
CartsUseCase({this.cartsRepository});
    @override
    Future<Either<Failure, Carts>> call(GetCartsParams params) {
    // TODO: implement call
    throw UnimplementedError();
    }

//
// @override
// Future<Either<Failure, LoginResponseModel>> call(GetLoginParams params) {
// // TODO: implement call
// return loginRepository!.login(params.email!,params.deviceToken!, params.password!, params.isPG!);
// }

}


class GetCartsParams {
final int? page;

GetCartsParams({
this.page,

});
}