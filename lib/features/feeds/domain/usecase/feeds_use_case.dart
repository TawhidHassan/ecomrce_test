
import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../entities/feeds.dart';
import '../repositories/feeds_repository.dart';
import '../../../../core/usecase/usecase.dart';


class FeedsUseCase implements UseCase<Feeds, GetFeedsParams> {
final FeedsRepository? feedsRepository;
FeedsUseCase({this.feedsRepository});
    @override
    Future<Either<Failure, Feeds>> call(GetFeedsParams params) {
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


class GetFeedsParams {
final int? page;

GetFeedsParams({
this.page,

});
}