import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_screen.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class Profile extends StatefulWidget {
   Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
bool isOb=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => LoginScreen(),));
        }, child: Text(
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),
            "Logout")),
      ],
      ),
      backgroundColor: HexColor('313131'),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 32,right: 32),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            child: Icon(
                                size: 45,
                                Icons.person),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: IconButton(onPressed: (){}, icon: Icon(
                              size: 15,
                                color: Colors.black,
                                Icons.edit)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        "Edit Profile"),
                  ),
                  SizedBox(height: 64,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        child: TextFormField(
                          style: TextStyle(color: primarySwatch),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
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
                            labelStyle: TextStyle(color:Colors.white,fontSize: 16.0),
                            hintText: 'Mohamed',
                            hintStyle: TextStyle(color:Colors.white,fontSize: 16.0),
                          ),                    ),
                      ),
                      Container(
                        width: 150,
                        child: TextFormField(
                          style: TextStyle(color: primarySwatch),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
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
                            labelStyle: TextStyle(color:Colors.white,fontSize: 16.0),
                            hintText: 'Selim',
                            hintStyle: TextStyle(color:Colors.white,fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      style: TextStyle(color: primarySwatch),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
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
                        labelStyle: TextStyle(color:Colors.white,fontSize: 16.0),
                        hintText: '(+20) 01023961202',
                        hintStyle: TextStyle(color:Colors.white,fontSize: 16.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                          style: TextStyle(color: primarySwatch),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isOb?false:true,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
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
                            hintText: '..........',
                            hintStyle: TextStyle(color:Colors.white,fontSize: 16.0),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.white,fontSize: 16.0),
                            suffixIcon: IconButton(
                              onPressed: ()
                              {
                                setState(() {
                                  isOb=!isOb;
                                });
                              },
                              icon: isOb?Icon(Icons.remove_red_eye_outlined,color:primarySwatch):Icon(Icons.visibility_off_outlined,color: Colors.white),
                            ),
                          ),
                          cursorColor: primarySwatch
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
