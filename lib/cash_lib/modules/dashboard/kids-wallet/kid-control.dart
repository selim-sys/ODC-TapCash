import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class KidControl extends StatefulWidget {
  const KidControl({Key? key}) : super(key: key);

  @override
  State<KidControl> createState() => _KidControlState();
}

class _KidControlState extends State<KidControl> {
  bool? isCheckedFood = false;
  bool? isCheckedClothes = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      backgroundColor: HexColor('303131'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Categories',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                       /* setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          "Food"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          "Clothes"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Toys"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Cinema"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Food"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Clothes"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Toys"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Cinema"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Food"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Clothes"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Toys"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Cinema"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Food"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Clothes"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedFood,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedFood=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Toys"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    child: CheckboxListTile(
                      tileColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: Colors.white),
                      activeColor: primarySwatch,
                      checkColor: Colors.white,
                      value: isCheckedClothes,
                      onChanged: (value){
                        /*setState(() {
                          isCheckedClothes=value;
                        });*/
                      },
                      title: Text(
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          "Cinema"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32,),
              Center(
                child: Container(
                    height: 50.0,
                    width: 270.0,
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Submit',style: TextStyle(fontSize: 20.0 , color: Colors.white,fontWeight: FontWeight.bold))
                    )
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
