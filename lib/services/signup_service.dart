import 'package:dio/dio.dart';
import 'package:eat24/model/sign_up/signup_model.dart';
import 'package:eat24/model/sign_up/signup_response_model.dart';
import 'package:eat24/services/dio_service.dart';
import 'package:eat24/services/internet_checker.dart';
import 'package:eat24/utils/url.dart';

class SignUpService {
  Future<SignUpResponseModel?> signUpRepo(SignUpModel data) async {
    if (await internetCheck()) {
      try {
        final response =
            await DioService.postMethod(url: Url.signup, value: data.toJson());
        if (response.statusCode >= 200 || response.statusCode <= 299) {
          //log('=======success =========');
          return SignUpResponseModel.fromJson(response.data);
        }else {
          return SignUpResponseModel.fromJson(response.data);
        }
      } on DioError catch (e) {
        if (e.response!.statusCode == 422) {
          return SignUpResponseModel(message: "Email address already exists !!");
        }
        //log("=========== Dio Error ===========");
      } catch (e) {
        return SignUpResponseModel(message: "Something went wrong !!");
        //log("===========  SignUp error message: $e ===========");
      }
      return null;
    } else {
      return SignUpResponseModel(message: "No Internet !!");
    }
  }
}
