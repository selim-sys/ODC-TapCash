import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/add-money/add-money.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/kids-wallet.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/pay/pay.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/request-money/request-money.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/send/send.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)=>Scaffold(
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
                                          "Hi, Omar "),/*${MainCubit.get(context).dashboardData['first_name']}*/
                                    ),
                                    IconButton(
                                      iconSize: 35,
                                      padding: EdgeInsets.only(
                                          top: 25,
                                          right: 27.5),
                                      color: Colors.white,
                                      onPressed: () {},
                                      icon: Icon(Icons.list),
                                    )
                                  ]),
                              SizedBox(height: 6,),
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
                                  " 5.000 EGP"),/*${MainCubit.get(context).dashboardData['balance']}*/
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 36,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: HexColor('FFAA00'),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 54,
                            width: 53,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Send(),));
                                },
                                icon: Icon(
                                    size: 33,
                                    Icons.call_made_sharp)),
                          ),
                          SizedBox(height: 4,),
                          Text(
                              style:TextStyle(
                                  fontSize: 12,
                                  color: Colors.white),
                              "Send"),
                        ],

                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: HexColor('3FACDB'),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 54,
                            width: 53,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => RequestMoney(),));
                                },
                                icon: Icon(
                                    size: 33,
                                    Icons.call_received_sharp)),
                          ),
                          SizedBox(height: 4,),
                          Text(
                              style:TextStyle(
                                  fontSize: 12,
                                  color: Colors.white),
                              "Request"),
                        ],

                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: HexColor('6EBEB6'),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 54,
                            width: 53,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: ()
                                {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => PayScreen()));
                                },
                                icon: Icon(
                                    size: 33,
                                    Icons.discount)),
                          ),
                          SizedBox(height: 4,),
                          Text(
                              style:TextStyle(
                                  fontSize: 12,
                                  color: Colors.white),
                              "Pay"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: HexColor('5A50B0'),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 54,
                            width: 53,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddMoney(),));
                                },
                                icon: Icon(
                                    size: 33,
                                    Icons.add)),
                          ),
                          SizedBox(height: 4,),
                          Text(
                              style:TextStyle(
                                  fontSize: 12,
                                  color: Colors.white),
                              "Add Money"),
                        ],

                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            height: 54,
                            width: 53,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => KidsWallet(),));
                                },
                                icon: Icon(
                                    size: 33,
                                    Icons.account_balance_wallet_sharp)),
                          ),
                          SizedBox(height: 4,),
                          Text(
                              style:TextStyle(
                                  fontSize: 12,
                                  color: Colors.white),
                              "Kids Wallet"),
                        ],

                      ),
                    ],
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
                                Icons.call_received_outlined,
                                color: Colors.white,),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Mohamed Selim',style: TextStyle(
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
                            Text('+ \$700',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: HexColor('3FACDB')
                            ))
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) =>SizedBox(height: 16.0,),
                    itemCount: 5,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
