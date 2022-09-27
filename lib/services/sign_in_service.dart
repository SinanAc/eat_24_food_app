import 'package:dio/dio.dart';
import 'package:eat24/model/sign_in/sign_in_model.dart';
import 'package:eat24/model/sign_in/signin_response_model.dart';
import 'package:eat24/services/dio_service.dart';
import 'package:eat24/services/internet_checker.dart';
import 'package:eat24/utils/url.dart';

class SignInService {
  Future<SignInResponseModel?> signInRepo(SignInModel data) async {
    final bool isInternetAvailable = await internetCheck();
    if (isInternetAvailable) {
      try {
        final response =
            await DioService.postMethod(url: Url.login, value: data.toJson());
        if (response.statusCode >= 200 || response.statusCode <= 299) {
          //log('=======success =========');
          return SignInResponseModel.fromJson(response.data);
        } else {
          return SignInResponseModel.fromJson(response.data);
        }
      } on DioError catch (e) {
        if (e.response!.statusCode == 401) {
          return SignInResponseModel(
              message: "Email and password doesn't match !!");
        }
        //log("=========== Dio Error ===========");
      } catch (e) {
        //log("===========  SignUp error message: $e ===========");
      }
      return null;
    } else {
      return SignInResponseModel(message: "No Internet !!");
    }
  }
}
