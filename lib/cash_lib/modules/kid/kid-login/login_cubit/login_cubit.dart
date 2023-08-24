import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/models/login_model.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_cubit/login_states.dart';
import 'package:tteesstt/cash_lib/network/remote/dio_helper.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';


class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit():super(LoginInitialState());

  static LoginCubit get(context)=>BlocProvider.of(context);

  Color labelColor1 = Colors.white;
  Color labelColor2 = Colors.white;
  bool isOb =true;
  Color suffixColor=Colors.white;
  late TapCashLoginModel loginModel;

  void label1()
  {
    labelColor1=primarySwatch;
    emit(LoginLabelColor1State());
  }

  void label2()
  {
    labelColor2=primarySwatch;
    emit(LoginLabelColor2State());
  }

  void obscureText()
  {
    isOb=!isOb;
    emit(LoginObscureTextState());
  }

  /*void userLogin({
    required String phoneNumber,
    required String password,
    String? pinCode
  })
  {
    emit(LoginLoadingState());

    DioHelper.postData(
        url: '/login',
        data:
        {
          'phone_number': phoneNumber,
          'password':password,
          'pin_code':pinCode
        }).then((value)
    {
      loginModel=TapCashLoginModel.fromJson(value.data);
      print(loginModel.data!.token);
      emit(LoginSuccessState(loginModel));
    }).catchError((error)
    {
      emit(LoginErrorState(error));
      print(error);
    });
  }*/


}