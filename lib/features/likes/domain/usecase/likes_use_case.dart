
import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../entities/likes.dart';
import '../repositories/likes_repository.dart';
import '../../../../core/usecase/usecase.dart';


class LikesUseCase implements UseCase<Likes, GetLikesParams> {
final LikesRepository? likesRepository;
LikesUseCase({this.likesRepository});
    @override
    Future<Either<Failure, Likes>> call(GetLikesParams params) {
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


class GetLikesParams {
final int? page;

GetLikesParams({
this.page,

});
}