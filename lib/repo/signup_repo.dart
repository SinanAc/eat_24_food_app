import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:eat24/model/sign_up/signup_model.dart';
import 'package:eat24/model/sign_up/signup_response_model.dart';
import 'package:eat24/repo/dio_services.dart';
import 'package:eat24/utils/url.dart';

class SignupApiService {
  Future<SignUpResponse?> signUpRepo(SignUpModel data) async {
    try {
      final response = await DioService.postMethod(url:Url.signup, value: data.toJson());
      if (response.statusCode == 201) {
        log('=======success =========');
        return SignUpResponse.fromJson(response.data); 
      }
    } on DioError catch (_) {
      // if (e.response!.statusCode == 401) {
      //   return SignUpResponse.fromJson(e.response!.data);
      // }
      log("=========== Dio Error ===========");
    } on SocketException catch (_) {
      log("=========== No internet ===========");
    } catch (e) {
      log("===========  SignUp error message: $e ===========");
    }
    return null;
  }
}
