import '../../../../core/network/connection_checker.dart';
import '../datasource/likes_remote_source.dart';
import '../../domain/repositories/likes_repository.dart';

class LikesRepositoryImpl implements LikesRepository{

final LikesRemoteSource remoteSource;
final ConnectionChecker connectionChecker;

LikesRepositoryImpl({required this.remoteSource,required this.connectionChecker});


// @override
// Future<Either<Failure, LoginResponseModel>> login(String email,String deviceToken, String pass, bool isPG) async{
//   // TODO: implement login
//   try{
//     if (!await (connectionChecker.isConnected)) {
//       return left(Failure("no internet connection!!"));
//     }else{
//       final data = await remoteSource.login(email,deviceToken,pass,isPG);
//       if(data!.status!="success"){
//         return left(Failure(data.message!));
//       }else{
//         return right(data);
//       }
//       // return right(episodes!.results!);
//     }
//   }on ServerException catch(e){
//     return left(Failure(e.message));
//   }
// }
}