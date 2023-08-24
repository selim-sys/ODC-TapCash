import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tteesstt/cash_lib/models/login_model.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/PIN/pin.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_cubit/login_states.dart';
import 'package:tteesstt/cash_lib/network/local/cache_helper.dart';
import 'package:tteesstt/cash_lib/network/remote/dio_helper.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';
import 'package:tteesstt/layout/home_layout.dart';


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

  void userLogin({
    required String phoneNumber,
    required String password,
    required BuildContext context
  })async
  {
    emit(LoginLoadingState());

    Response response = await DioHelper.postData(
        url: '/login',
        data:
        {
          'phone_number': phoneNumber,
          'password': password,
        });

    if(response.statusCode==200||response.statusCode==201)
    {
      loginModel=TapCashLoginModel.fromJson(response.data);
      emit(LoginSuccessState(loginModel));
      CacheHelper.saveData(key: 'token', value: loginModel.data!.token.toString());
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => PinFingerprint()));

    }
    else if(response.statusCode == 422||response.statusCode == 401)
    {

      Fluttertoast.showToast(
          msg: response.data['message'],
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      emit(LoginErrorState());
    }
  }
}