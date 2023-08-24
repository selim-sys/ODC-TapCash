import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter/services.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-cubit.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-states.dart';
import 'package:tteesstt/cash_lib/network/local/cache_helper.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class OTP extends StatelessWidget {
   OTP({Key? key}) : super(key: key);
   var p1Controller=TextEditingController();
   var p2Controller=TextEditingController();
   var p3Controller=TextEditingController();
   var p4Controller=TextEditingController();
   var p5Controller=TextEditingController();
   var p6Controller=TextEditingController();

   final formKey = GlobalKey<FormState>();


   //String? phoneNumber = CacheHelper.sharedPreferences.getString('phone');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>RegisterCubit(),
      child: BlocConsumer<RegisterCubit,RegisterStates>
        (
        listener: (context , state){},
        builder: (context,state) =>Scaffold(
          backgroundColor: HexColor('313131'),
          body: SafeArea(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          "Verification code"),
                      SizedBox(height: 8,),
                      Text(
                          style:TextStyle(
                            color: Colors.grey,
                          ),
                          "we have sent the verification code to"),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          "+201023961202"),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 54,
                              width: 50,
                              child: TextFormField(
                                  validator: (value)
                                  {
                                    if(value!.isEmpty)
                                    {
                                      return "empty";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: p1Controller,
                                  onChanged: (value){
                                    if(value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  onSaved: (value) => p1Controller = value! as TextEditingController,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: primarySwatch),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                  ),
                                  cursorColor: primarySwatch
                              )),
                          SizedBox(
                              height: 54,
                              width: 50,
                              child: TextFormField(
                                  controller: p2Controller,
                                  validator: (value)
                                  {
                                    if(value!.isEmpty)
                                    {
                                      return "empty";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  onChanged: (value){
                                    if(value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  onSaved: (value) => p2Controller = value! as TextEditingController,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: primarySwatch),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                  ),
                                  cursorColor: primarySwatch
                              )),
                          SizedBox(
                              height: 54,
                              width: 50,
                              child: TextFormField(
                                  validator: (value)
                                  {
                                    if(value!.isEmpty)
                                    {
                                      return "empty";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: p3Controller,
                                  onChanged: (value){
                                    if(value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  onSaved: (value) => p3Controller = value! as TextEditingController,

                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: primarySwatch),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                  ),
                                  cursorColor: primarySwatch
                              )),
                          SizedBox(
                              height: 54,
                              width: 50,
                              child: TextFormField(
                                  validator: (value)
                                  {
                                    if(value!.isEmpty)
                                    {
                                      return "empty";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: p4Controller,
                                  onChanged: (value){
                                    if(value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  onSaved: (value) => p4Controller = value! as TextEditingController,

                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: primarySwatch),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                  ),
                                  cursorColor: primarySwatch
                              )),
                          SizedBox(
                              height: 54,
                              width: 50,
                              child: TextFormField(
                                  validator: (value)
                                  {
                                    if(value!.isEmpty)
                                    {
                                      return "empty";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                  controller: p5Controller,
                                  onChanged: (value){
                                    if(value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  onSaved: (value) => p5Controller = value! as TextEditingController,

                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: primarySwatch),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                  ),
                                  cursorColor: primarySwatch
                              )),
                          SizedBox(
                              height: 54,
                              width: 50,
                              child: TextFormField(
                                validator: (value)
                                {
                                  if(value!.isEmpty)
                                  {
                                    return "empty";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                  controller: p6Controller,
                                  onSaved: (value) =>  print(value),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: primarySwatch),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: primarySwatch)),
                                  ),
                                  cursorColor: primarySwatch
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(onPressed: ()
                          {
                            RegisterCubit.get(context).sendOTP(pNumber: CacheHelper.sharedPreferences.getString('phone')!);

                          }, child: Text("resend verification code")),
                          Text(
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                              "after 60 sec"),
                        ],
                      ),
                      SizedBox(height: 32,),
                      Center(
                        child: Container(
                            height: 45.0,
                            width: 270.0,
                            child: ElevatedButton(
                                onPressed: ()
                                {
                                  if(formKey.currentState!.validate())
                                  {
                                    RegisterCubit.get(context).verifyOTP(
                                        pNumber:CacheHelper.sharedPreferences.getString('phone')!,
                                        otp:p1Controller.text+p2Controller.text+
                                            p3Controller.text+p4Controller.text+
                                            p5Controller.text+p6Controller.text,
                                        context: context
                                    );
                                  }

                                },
                                child: Text('Verify',style: TextStyle(fontSize: 20.0 , color: Colors.white,fontWeight: FontWeight.bold))
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
