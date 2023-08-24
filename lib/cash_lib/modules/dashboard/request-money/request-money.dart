import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class RequestMoney extends StatelessWidget {
    RequestMoney({Key? key}) : super(key: key);
    var amountController = TextEditingController();

    var phoneController = TextEditingController();

    final   formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('303131'),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 160,
              right: 20,
              left: 20,
            ),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: HexColor('3FACDB'),
                    child: Icon(
                        size: 50,
                        color: Colors.white,
                        Icons.call_received_outlined),
                  ),
                  SizedBox(height: 64,),
                  TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      style: TextStyle(color: primarySwatch),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Please enter a phone number";
                        }
                        else{
                          return null;
                        }
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
                        labelStyle: TextStyle(color: Colors.white,fontSize: 16.0),
                        hintText: "Request money from : ",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      cursorColor: primarySwatch
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      controller: amountController,
                      style: TextStyle(color: primarySwatch),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Please enter amount";
                        }
                        else{
                          return null;
                        }
                      },
                      onSaved: (value) => amountController = value! as TextEditingController,
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
                          labelText: 'Amount',
                          labelStyle: TextStyle(color: Colors.white,fontSize: 16.0),
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                              color: Colors.white,
                              Icons.currency_pound)
                      ),
                      cursorColor: primarySwatch
                  ),
                  SizedBox(height: 16,),
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
                          onPressed: ()
                          {
                            showDialog(context: context, builder: (context) => AlertDialog(
                              content: Text("Are you sure you want to request ${amountController.text} \n from +20 ${phoneController.text} ?"),
                              actions: [
                                TextButton(onPressed: (){}, child: Text("Confirm")),
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                    child: Text(
                                        style: TextStyle(
                                            color: Colors.red
                                        ),
                                        "Cancel")),
                              ],
                            ),);
                          },
                          child: Text("Request",
                            style: TextStyle
                              (
                                fontSize: 20.0, fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );  }
}
