import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_screen.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/OTP/otp.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-cubit.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-states.dart';
import 'package:tteesstt/cash_lib/network/local/cache_helper.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';


class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var fNameController=TextEditingController();
  var lNameController=TextEditingController();
  var phoneController=TextEditingController();
  var passwordController=TextEditingController();

  bool isButtonActive = false;

  final formKey = GlobalKey<FormState>();

  //String? phoneNum=CacheHelper.sharedPreferences.getString('phone');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>RegisterCubit(),
        child:BlocConsumer<RegisterCubit,RegisterStates>(
            listener: (context,state)
            {
              if(state is RegisterSuccessState)
              {
                if(state.registerModel.status!)
                {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => OTP()));
                }
              }
            },
            builder: (context,state)=>Scaffold(
              backgroundColor: HexColor('313131'),
              body: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: SafeArea(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            SizedBox(height: 32,),
                            Center(
                              child:  Image.asset(
                                  color: primarySwatch,
                                  height: 100,
                                  width: 100,
                                  "images/person.png"
                              ),
                            ),
                            Center(child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: primarySwatch
                              ),
                            )),
                            SizedBox(height: 32.0,),
                            TextFormField(
                                controller: fNameController,
                                style: TextStyle(color: primarySwatch),
                                validator: (value) {
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter your first name";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                onTap: ()
                                {
                                  RegisterCubit.get(context).label1();
                                },
                                onSaved: (value) => fNameController = value! as TextEditingController,
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
                                  labelText: 'First Name',
                                  labelStyle: TextStyle(color: RegisterCubit.get(context).labelColor1,fontSize: 16.0),
                                ),
                                cursorColor: primarySwatch
                            ),
                            SizedBox(height: 24,),
                            TextFormField(
                                controller: lNameController,
                                style: TextStyle(color: primarySwatch),
                                validator: (value) {
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter your last name";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                onTap: ()
                                {
                                  RegisterCubit.get(context).label2();
                                },
                                onSaved: (value) => lNameController = value! as TextEditingController,
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
                                  labelText: 'Last Name',
                                  labelStyle: TextStyle(color: RegisterCubit.get(context).labelColor2,fontSize: 16.0),
                                ),
                                cursorColor: primarySwatch
                            ),
                            SizedBox(height: 24,),
                            TextFormField(
                                controller: phoneController,
                                style: TextStyle(color: primarySwatch),
                                validator: (value) {
                                  if(value!.isEmpty)
                                  {
                                    return "Please enter your phone number";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                onTap: ()
                                {
                                  RegisterCubit.get(context).label4();
                                },
                                onSaved: (value) => phoneController = value! as TextEditingController,
                                decoration: InputDecoration(
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
                                  labelText: 'Phone Number',
                                  labelStyle: TextStyle(color: RegisterCubit.get(context).labelColor4,fontSize: 16.0),
                                ),
                                cursorColor: primarySwatch
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
                                  RegisterCubit.get(context).label5();
                                },
                                onSaved: (value) => passwordController = value! as TextEditingController,

                                obscureText: RegisterCubit.get(context).isOb?true:false,
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
                                  labelStyle: TextStyle(color: RegisterCubit.get(context).labelColor5,fontSize: 16.0),
                                  suffixIcon: IconButton(
                                    onPressed: ()
                                    {
                                      RegisterCubit.get(context).obscureText();
                                    },
                                    icon:RegisterCubit.get(context).isOb?Icon(Icons.visibility_off_outlined,color: Colors.white):Icon(Icons.remove_red_eye_outlined,color:primarySwatch),
                                  ),
                                ),
                                cursorColor: primarySwatch
                            ),
                            SizedBox(height: 5,),
                            Text('*password must be numbers and characters*',style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 24,),
                            Row(
                              children: [
                                Checkbox(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    side: BorderSide(width: 2, color: Colors.white),
                                    activeColor: primarySwatch,
                                    value: RegisterCubit.get(context).above18,
                                    onChanged: (value)
                                    {
                                        RegisterCubit.get(context).checkAge();

                                }),
                                SizedBox(width: 4,),
                                Text(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white
                                  ),
                                    "Iam over 16 years")
                              ],
                            ),
                            SizedBox(height: 16,),
                            Center(
                              child: SizedBox(
                                width: 120,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: RegisterCubit.get(context).above18?() {
                                    if (formKey.currentState!.validate())
                                    {
                                     RegisterCubit.get(context).userRegister(
                                         fName: fNameController.text,
                                         lName: lNameController.text,
                                         pNumber: '+20${phoneController.text}',
                                         password: passwordController.text,
                                         );
                                    }
                                  }
                                      : null
                                  ,
                                  child: Text("Sign Up",
                                    style: TextStyle
                                      (
                                        fontSize: 20.0, fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: primarySwatch,

                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: TextButton(
                                  onPressed: ()
                                  {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => LoginScreen()));
                                  },
                                  child: Text('Already have an account ?')),
                            )
                          ]
                      ),
                    ),
                  )
                  ,
                ),
              ),
            )
        )
    );
  }
}
