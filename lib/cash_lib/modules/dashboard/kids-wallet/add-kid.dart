import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../shared/colors/colors.dart';

class AddKid extends StatefulWidget {
   AddKid({Key? key}) : super(key: key);

  @override
  State<AddKid> createState() => _AddKidState();
}

class _AddKidState extends State<AddKid> {
   var childNameController=TextEditingController();

   var phoneController=TextEditingController();

   var passwordController=TextEditingController();

   Color labelColor1 = Colors.white;

   Color labelColor2 = Colors.white;

   Color labelColor3 = Colors.white;

    String childName="",childNumber="",childPassword="";

   bool isOb =true;


   final   formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: HexColor('303131'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child:  Image.asset(
                          height: 100,
                          width: 100,
                          "images/child.png"
                      ),
                    ),
                    Center(child: Text(
                      'Add your Child',
                      style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: primarySwatch
                      ),
                    )),
                    SizedBox(height: 32.0,),
                    TextFormField(
                        controller: childNameController,
                        style: TextStyle(color: primarySwatch),
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter your child name";
                          }
                          else{
                            return null;
                          }
                        },
                        onTap: ()
                        {
                          setState(() {
                            labelColor1=primarySwatch;
                          });
                        },
                        onSaved: (value) => childNameController = value! as TextEditingController,
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
                          labelText: 'Child Name',
                          labelStyle: TextStyle(color: labelColor1,fontSize: 16.0),
                        ),
                        cursorColor: primarySwatch
                    ),
                    SizedBox(height: 24,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                        controller: phoneController,
                        style: TextStyle(color: primarySwatch),
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter your child phone number";
                          }
                          else{
                            return null;
                          }
                        },
                        onTap: ()
                        {
                          setState(() {
                            labelColor2=primarySwatch;
                          });
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
                          labelStyle: TextStyle(color: labelColor2,fontSize: 16.0),
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
                            return "Please enter your child password";
                          }
                          else{
                            return null;
                          }
                        },
                        onTap: ()
                        {
                          setState(() {
                            labelColor3 = primarySwatch;
                          });
                        },
                        onSaved: (value) => passwordController = value! as TextEditingController,

                        obscureText: isOb?true:false,
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
                          labelStyle: TextStyle(color: labelColor3,fontSize: 16.0),
                          suffixIcon: IconButton(
                            onPressed: ()
                            {
                              setState(() {
                                isOb=!isOb;
                              });
                            },
                            icon: isOb?Icon(Icons.visibility_off_outlined,color: Colors.white):Icon(Icons.remove_red_eye_outlined,color:primarySwatch),
                          ),
                        ),
                        cursorColor: primarySwatch
                    ),
                    SizedBox(height: 24,),
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate())
                          {
                            Fluttertoast.showToast(
                                msg: 'your child ${childNameController.text.trim()} is added',
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 5,
                                backgroundColor: Colors.green,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          }
                        },
                        child: Text("Add Child",
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

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
