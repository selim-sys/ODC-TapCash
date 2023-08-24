import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_cubit/login_cubit.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_cubit/login_states.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';


class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController=TextEditingController();

  var passwordController=TextEditingController();

  final   formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state) {},
        builder: (context,state)=>Scaffold(
          backgroundColor: HexColor('313131'),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Center(
                        child: Image.asset(
                            color: primarySwatch,
                            height: 200,
                            width: 200,
                            "images/output-onlinepngtools.png"
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
                              ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 20,
                            ),
                            child: Text(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                ),
                                "(+20)"),
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
                                 LoginCubit.get(context).userLogin(
                                     phoneNumber: '+20${phoneController.text.trim()}',
                                     password: passwordController.text.trim(),
                                     context: context);
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
                      Center(
                        child: TextButton(
                            onPressed: ()
                            {

                            },
                            child:Text('Forgot password ?',
                            style: TextStyle(
                              color:Colors.white,
                            ),
                            ),
                        ),
                      ),
                    ]
                ),
              )
              ,
            ),
          ),
        )
      ),
    );
  }
}
