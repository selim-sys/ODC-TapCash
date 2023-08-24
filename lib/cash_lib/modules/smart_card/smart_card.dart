import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class SmartCard extends StatelessWidget {
  const SmartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>MainCubit(),
      child: BlocConsumer<MainCubit,AppStates>(

        listener: (context,state){},
        builder: (context,state)=>Scaffold(
          backgroundColor: HexColor('303131'),
          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ConditionalBuilder(
                condition: state is GenerateCardState,
                builder:(context)=> Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 270.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal[400]!,
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                            BoxShadow(
                              color: Colors.teal[400]!,
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),                  child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'images/output-onlinepngtools.png',
                                  height: 90.0,
                                  width: 90.0,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Image.asset(
                              'images/icons8-chip-card-80.png',
                              height: 60.0,
                            ),
                            SizedBox(height: 8,),
                            Text('1234  5678  9102  3456',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text('Mohamed Selim',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('CVV',style: TextStyle(color: Colors.white,fontSize: 12.0),),
                                      Text('4567',style: TextStyle(color: Colors.white,fontSize: 16.0),),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text('EXP',style: TextStyle(color: Colors.white,fontSize: 12.0),),
                                      Text('5/8',style: TextStyle(color: Colors.white,fontSize: 16.0),),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Text('You can use it now !',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                fallback: (context)=>Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/payment (1).png',
                        height: 350.0,
                        width: 350.0,
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                          height: 45.0,
                          width: 290.0,
                          child: ElevatedButton(
                              onPressed: (){MainCubit.get(context).GenerateCard();},
                              child: Text('Generate Temporary Card',style: TextStyle(fontSize: 20.0 , color: Colors.white,fontWeight: FontWeight.bold))
                          )
                      ),
                    ],
                  ),
                ),

              )
          ),
        ),
      ),
    );
  }
}



/*
*/




/*
*/
