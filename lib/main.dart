import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:tteesstt/cash_lib/bloc_observer/observer.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/PIN/pin.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_screen.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/OTP/otp.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/add-money/add-money.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/dashboard.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/add-kid.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/kid-control.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/kid-profile.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/kids-wallet.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/pay/pay.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/send/send.dart';
import 'package:tteesstt/cash_lib/modules/kid/kid-login/kid-login.dart';
import 'package:tteesstt/cash_lib/modules/kid/kid-login/kiddashboard/kiddashboard.dart';
import 'package:tteesstt/cash_lib/modules/on_boarding/onboarding_screen.dart';
import 'package:tteesstt/cash_lib/modules/profile/profile.dart';
import 'package:tteesstt/cash_lib/modules/smart_card/smart_card.dart';
import 'package:tteesstt/cash_lib/network/local/cache_helper.dart';
import 'package:tteesstt/cash_lib/network/remote/dio_helper.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';
import 'package:tteesstt/cash_lib/shared/constants.dart';
import 'package:tteesstt/layout/home_layout.dart';


void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  AuthenticationOptions();
  await CacheHelper.init();
   token = CacheHelper.sharedPreferences.getString('token')!;
   Widget startScreen;

   if(token==null)
   {
     startScreen=OnBoardingScreen();
   }
   else
   {
     startScreen=AppLayout();
   }

  runApp( MyApp(
    startScreen:startScreen,
  ));





}

class MyApp extends StatelessWidget {
   MyApp({Key? key,required this.startScreen}) : super(key: key);

  Widget startScreen;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((BuildContext context)=> MainCubit()..getDashboard()),
      child: MaterialApp(
        home: Profile(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: primarySwatch
        ),
      ),
    );
  }
}
/*Update main
Create local Branch
Commit ✅
Checkout main
Update main
Checkout local Branch
Merge main into local Branch
Push
GitHub*/


