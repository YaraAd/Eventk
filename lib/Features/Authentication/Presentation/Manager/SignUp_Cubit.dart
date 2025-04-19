import 'package:dio/dio.dart';
import 'package:eventk/Core/dataBase/Cache/Cache_Helper.dart';
import 'package:eventk/Core/Services/get_it_services.dart';
import 'package:eventk/Core/utils/Signup_Service.dart';
import 'package:eventk/Features/Authentication/Data/Model/Signup_Model.dart';
import 'package:eventk/Features/Authentication/Presentation/Manager/SignUp_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
/*Yara❤️*/

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(InitalSignupState());
  SignUp(
      {required String userName,
      required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String birthDate}) async {
    try {
      emit(LoadingSignupState());
      SignupModel? signupModel = await SignupService(Dio()).requestForSignup(
          userName: userName,
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
          birthDate: birthDate);
      if (signupModel != null) {
        getIt<CacheHelper>().saveData(key: 'email', value: email);
        emit(SuccessSignupState());
      } else {
        String errMessage =
            getIt<CacheHelper>().getData(key: 'errMessage') ?? '';
        emit(FailureSignupState(errMessage));
      }
    } catch (e) {
      emit(FailureSignupState(e.toString()));
    }
  }
}
