
import 'package:tteesstt/cash_lib/models/login_model.dart';

abstract class LoginStates {}


class LoginInitialState extends LoginStates{}

class LoginLoadingState extends LoginStates{}

class LoginSuccessState extends LoginStates
{
  final TapCashLoginModel loginModel;

  LoginSuccessState(this.loginModel);
}

class LoginErrorState extends LoginStates
{

}

class LoginLabelColor1State extends LoginStates{}

class LoginLabelColor2State extends LoginStates{}

class LoginObscureTextState extends LoginStates{}


