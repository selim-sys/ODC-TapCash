
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tteesstt/cash_lib/models/register/register_succcess_model.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/PIN/pin.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_screen.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-states.dart';
import 'package:tteesstt/cash_lib/network/local/cache_helper.dart';
import 'package:tteesstt/cash_lib/network/remote/dio_helper.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit():super(RegisterInitialState());

  static RegisterCubit get(context)=>BlocProvider.of(context);

  Color labelColor1 = Colors.white;
  Color labelColor2 = Colors.white;
  Color labelColor3 = Colors.white;
  Color labelColor4 = Colors.white;
  Color labelColor5 = Colors.white;
  Color labelColor6 = Colors.white;
  bool isOb =true;
  bool isOb2 =true;
  bool above18=false;
  Color suffixColor=Colors.white;
  late CashRegisterModel registerModel;


  void label1()
  {
    labelColor1=primarySwatch;
    emit(RegisterLabelColor1State());
  }

  void label2()
  {
    labelColor2=primarySwatch;
    emit(RegisterLabelColor2State());
  }
  void label3()
  {
    labelColor3=primarySwatch;
    emit(RegisterLabelColor3State());
  }
  void label4()
  {
    labelColor4=primarySwatch;
    emit(RegisterLabelColor4State());
  }
  void label5()
  {
    labelColor5=primarySwatch;
    emit(RegisterLabelColor5State());
  }
  void label6()
  {
    labelColor6=primarySwatch;
    emit(RegisterLabelColor6State());
  }

  void obscureText()
  {
    isOb=!isOb;
    emit(RegisterObscureTextState());
  }
  void obscureText2()
  {
    isOb2=!isOb2;
    emit(RegisterObscureTextState2());
  }

  void checkAge()
  {
    above18=!above18;
    emit(RegisterCheckAgeState());
  }


  void userRegister({
    required String fName,
    required String lName,
    required String pNumber,
    required String password,

  }) async
  {
    emit(RegisterLoadingState());
    Response response = await DioHelper.postData(
        url: '/register',
        data:
        {
          'first_name': fName,
          'last_name':lName,
          'phone_number':pNumber,
          'password':password,
        });
    if(response.statusCode==200||response.statusCode==201)
      {
        registerModel=CashRegisterModel.fromJson(response.data);
        print(registerModel.data!.user!.phoneNumber);
        emit(RegisterSuccessState(registerModel));
        sendOTP(pNumber: registerModel.data!.user!.phoneNumber.toString());
        CacheHelper.saveData(key: 'phone', value: registerModel.data!.user!.phoneNumber.toString());
      }
    else if(response.statusCode == 422)
      {
        Map<String,dynamic> errors = response.data['errors'];
        errors.forEach((key, value) {
          for (int i = 0; i < value.length; i++) {
            Fluttertoast.showToast(
                msg: value[i],
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
        });
        emit(RegisterErrorState());
      }


  }

  void sendOTP({
    required String pNumber,
  }) async
  {
    emit(OTPSendLoadingState());
    Response response = await DioHelper.postData(
        url: '/send-otp',
        data:
        {
          'phone_number':pNumber,
        });
    if(response.statusCode==200||response.statusCode==201)
    {
      emit(OTPSendSuccessState());
    }

    }

  void verifyOTP({
    required String pNumber,
    required String otp,
    required BuildContext context,
  }) async
  {
    emit(OTPVerifyLoadingState());
    Response response = await DioHelper.postData(
        url: '/verify-otp',
        data:
        {
          'phone_number':pNumber,
          'otp':otp
        });
    if(response.statusCode==200||response.statusCode==201)
    {
      emit(OTPVerifySuccessState());
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => LoginScreen()));
    }
    else if(response.statusCode == 422)
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
          emit(OTPVerifyErrorState());
      }

    }


  }





