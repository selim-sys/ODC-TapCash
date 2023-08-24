import 'package:tteesstt/cash_lib/models/register/register_succcess_model.dart';

abstract class RegisterStates {}


class RegisterInitialState extends RegisterStates{}

class RegisterLoadingState extends RegisterStates{}

class RegisterSuccessState extends RegisterStates
{
  final CashRegisterModel registerModel;

  RegisterSuccessState(this.registerModel);
}

class RegisterErrorState extends RegisterStates
{

}

class OTPSendSuccessState extends RegisterStates{}

class OTPSendLoadingState extends RegisterStates{}

class OTPVerifyLoadingState extends RegisterStates{}

class OTPVerifySuccessState extends RegisterStates{}

class OTPVerifyErrorState extends RegisterStates{}


class RegisterLabelColor1State extends RegisterStates{}

class RegisterLabelColor2State extends RegisterStates{}

class RegisterLabelColor3State extends RegisterStates{}

class RegisterLabelColor4State extends RegisterStates{}

class RegisterLabelColor5State extends RegisterStates{}

class RegisterLabelColor6State extends RegisterStates{}

class RegisterObscureTextState extends RegisterStates{}

class RegisterObscureTextState2 extends RegisterStates{}

class RegisterCheckAgeState extends RegisterStates{}


