/*Yara Ade*/
import 'package:dio/dio.dart';
import 'package:eventk/Core/dataBase/Cache/Cache_Helper.dart';
import 'package:eventk/Core/errors/errorModel.dart';
import 'package:eventk/Core/utils/End_Point.dart';
import 'package:eventk/Core/utils/Service_Locator.dart';
import 'package:eventk/Features/Authentication/Data/Model/Signup_Model.dart';

class SignupService {
  final Dio dio;
  SignupService(this.dio);
  Future<SignupModel?> requestForSignup(
      {required String userName,
      required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String birthDate}) async {
    try {
      Response response = await dio.post(
        EndPoint.baseUrlAuth + EndPoint.signup,
        data: {
          'userName': userName,
          'email': email,
          'password': password,
          'firstName': firstName,
          'lastName': lastName,
          'birthDate': birthDate,
        },
        options: Options(
          headers: {'Content-Type': 'application/json'},
          validateStatus: (status) => status! >= 200 && status < 300,
        ),
      );
      SignupModel signupModel = SignupModel.fromJson(response.data);
      return signupModel;
    } on DioException catch (e) {
      ErrorModel errorModel = ErrorModel.fromJson(e.response!.data);
      String errMessage =
          errorModel.message ?? 'oops ,there was an error , try later !';
      await getIt<CacheHelper>().saveData(key: 'errMessage', value: errMessage);
      Exception(errMessage);
    } catch (e) {
      throw Exception('oops ,there was an error , try later !');
    }
  }
}
