import '../../../../core/network/api_services.dart';

abstract class FeedsRemoteSource {
// Future<LoginResponseModel?> login(String email,String deviceToken, String pass, bool isPg);

}


class FeedsRemoteSourceImpl implements FeedsRemoteSource {
    final ApiMethod apiMethod;
   FeedsRemoteSourceImpl({required this.apiMethod});

// @override
// Future<LoginResponseModel?> login(String email,String deviceToken, String pass, bool isPg)async {
//
//   Map<String, dynamic> data = {
//   "email":email,
//   "password":pass,
//   "isPG":isPg,
//   "mobileToken":deviceToken
//   };
//   try{
//     final result =await apiMethod.post(url: ApiEndpoint.LOGIN,body: data,showResult: true,isBasic: true,duration: 30);
//     return LoginResponseModel.fromJson(result);
//   }catch (e) {
//     throw ServerException(e.toString());
//   }
// }
}
