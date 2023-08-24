import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/add-kid.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/kid-profile.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class KidsWallet extends StatelessWidget {
   KidsWallet({Key? key}) : super(key: key);
   var amountController = TextEditingController();

   final   formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('303131'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 48,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [HexColor('2D776C'), HexColor("12332E")],
                            )),
                        width: 349,
                        height: 134,
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 21,
                                      top: 30,
                                    ),
                                    child: Text(
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        "Hi, Mostafa"),
                                  ),
                                ]),
                            SizedBox(height: 8,),
                            Text(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                ),
                                "Your Total Balance"),
                            SizedBox(height: 6,),
                            Text(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                "EGP 20,000"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,),
                Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),
                    "Kids"),
                SizedBox(height: 16,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AddKid(),));
                          },
                        child: Icon(Icons.add),
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: primarySwatch,
                          ),
                          height: 160,
                          width: 140,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primarySwatch,
                                    radius: 40.0,
                                    child: Image.asset(
                                      'images/icons8-children-64.png',
                                      height: 100.0,
                                      width: 100.0,
                                    ),
                                  ),
                                  Text(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                      "Mahmoud"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => KidProfile(),));
                        },
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: primarySwatch,
                          ),
                          height: 160,
                          width: 140,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primarySwatch,
                                    radius: 40.0,
                                    child: Image.asset(
                                      'images/icons8-children-64.png',
                                      height: 100.0,
                                      width: 100.0,
                                    ),
                                  ),
                                  Text(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                      "Mahmoud"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => KidProfile(),));
                        },
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: primarySwatch,
                          ),
                          height: 160,
                          width: 140,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primarySwatch,
                                    radius: 40.0,
                                    child: Image.asset(
                                      'images/icons8-children-64.png',
                                      height: 100.0,
                                      width: 100.0,
                                    ),
                                  ),
                                  Text(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                      "Mahmoud"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => KidProfile(),));
                        },
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: primarySwatch,
                          ),
                          height: 160,
                          width: 140,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primarySwatch,
                                    radius: 40.0,
                                    child: Image.asset(
                                      'images/icons8-children-64.png',
                                      height: 100.0,
                                      width: 100.0,
                                    ),
                                  ),
                                  Text(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                      "Mahmoud"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => KidProfile(),));
                        },
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: primarySwatch,
                          ),
                          height: 160,
                          width: 140,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primarySwatch,
                                    radius: 40.0,
                                    child: Image.asset(
                                      'images/icons8-children-64.png',
                                      height: 100.0,
                                      width: 100.0,
                                    ),
                                  ),
                                  Text(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                      "Mahmoud"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => KidProfile(),));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36,),
                Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17
                    ),
                    "Lastest Operations"),
                SizedBox(height: 16,),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      height: 75.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: HexColor('3FACDB'),
                          ),
                          borderRadius: BorderRadius.circular(17.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:HexColor('3FACDB') ,
                              child: Icon(
                                size: 20,
                                Icons.send_rounded,
                                color: Colors.white,),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Selim',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white
                                )),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Text('10 Feb 2023',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                    SizedBox(width: 5,),
                                    Text('at',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                    SizedBox(width: 5,),
                                    Text('08:00 AM',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Text('+ EGP 30',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: HexColor('3FACDB')
                            ))
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) =>SizedBox(height: 16.0,),
                    itemCount: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
