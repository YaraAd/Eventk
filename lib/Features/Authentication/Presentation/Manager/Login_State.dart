/*Yara Adel*/
abstract class LoginState {}

class InitailLoginState extends LoginState {}

class SuccessLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class FailarLoginState extends LoginState {
  final String errorMessage;
  FailarLoginState(this.errorMessage);
}
