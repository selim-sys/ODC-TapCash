import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_cubit/login_cubit.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_cubit/login_states.dart';
import 'package:tteesstt/cash_lib/modules/kid/kid-login/kiddashboard/kiddashboard.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';


class KidLogin extends StatefulWidget {
  KidLogin({Key? key}) : super(key: key);

  @override
  State<KidLogin> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<KidLogin> {
  var phoneController=TextEditingController();

  var passwordController=TextEditingController();

  final   formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>LoginCubit(),
        child:BlocConsumer<LoginCubit,LoginStates>(
            listener: (context,state)
            {
              /*if (state is LoginSuccessState)
              {
                if(state.loginModel.status!)
                {
                  *//*Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => OTP()));*//*
                }
                else
                {
                  {
                    Fluttertoast.showToast(
                        msg: state.loginModel.message!,
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                }
              }*/

            },
            builder: (context,state)=>Scaffold(
              backgroundColor: HexColor('313131'),
              body: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Center(
                              child: Image.asset(
                                  height: 160,
                                  width: 160,
                                  "images/child.png"
                              ),
                            ),
                            SizedBox(height: 32.0,),
                            Center(child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: primarySwatch
                              ),
                            )),
                            SizedBox(height: 32.0,),
                            TextFormField(
                              controller: phoneController,
                              style: TextStyle(color: primarySwatch),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if(value!.isEmpty)
                                {
                                  return "Please enter your phone number";
                                }
                                if(value.length>11){
                                  print("Please enter a valid phone number");
                                }
                                else{
                                  return null;
                                }

                              },
                              onSaved: (value) => phoneController = value! as TextEditingController,

                              onTap: ()
                              {
                                LoginCubit.get(context).label1();
                              },
                              decoration: InputDecoration(

                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: primarySwatch
                                    )
                                ),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: primarySwatch
                                    )
                                ),

                                labelText: 'Phone number',
                                labelStyle: TextStyle(color:LoginCubit.get(context).labelColor1,fontSize: 16.0),


                              ),
                              cursorColor: primarySwatch,
                            ),
                            SizedBox(height: 24,),
                            TextFormField(
                                controller: passwordController,
                                style: TextStyle(color: primarySwatch),
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter your password";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                onTap: ()
                                {
                                  LoginCubit.get(context).label2();
                                },
                                onSaved: (value) => passwordController = value! as TextEditingController,

                                obscureText: LoginCubit.get(context).isOb?true:false,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.white
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: primarySwatch
                                      )
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: primarySwatch
                                      )
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: LoginCubit.get(context).labelColor2,fontSize: 16.0),
                                  suffixIcon: IconButton(
                                    onPressed: ()
                                    {
                                      LoginCubit.get(context).obscureText();
                                    },
                                    icon:LoginCubit.get(context).isOb?Icon(Icons.visibility_off_outlined,color: Colors.white):Icon(Icons.remove_red_eye_outlined,color:primarySwatch),
                                  ),
                                ),
                                cursorColor: primarySwatch
                            ),
                            SizedBox(height: 32,),
                            Center(
                              child: Container
                                (
                                decoration: BoxDecoration(
                                    color: primarySwatch,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                width: 120.0,
                                height: 50.0,
                                child: MaterialButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate())
                                      {
                                        /*LoginCubit.get(context).userLogin(
                                            phoneNumber: phoneController.text,
                                            password: passwordController.text);
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => KidDashboard(),));*/
                                      }
                                    },
                                    child: Text("Login",
                                      style: TextStyle
                                        (
                                          fontSize: 20.0, fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),
                                    )
                                ),
                              ),
                            ),
                          ]
                      ),
                    )
                    ,
                  ),
                ),
              ),
            )
        )
    );
  }
}
