import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/pay/pay.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class QRScan extends StatelessWidget {
   QRScan({Key? key}) : super(key: key);

  final GlobalKey qrKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)=>Scaffold(
        backgroundColor: HexColor('313131'),
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PayScreen()));},icon: Icon(Icons.arrow_back_ios_new_outlined),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 270.0,
              width: 270.0,
              child: QRView(key: qrKey,onQRViewCreated:MainCubit.get(context).qrScan),

            ),
            SizedBox(height: 32.0,),
            Center(
              child: Text('SCAN A VALID QR',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: primarySwatch,)),
            ),
            SizedBox(height: 32.0,),
            ConditionalBuilder(
              condition: state is QRScanSuccessState,
              builder:(context)=> Column(
                children: [
                  Text('${MainCubit.get(context).result!.code}',style: TextStyle(fontSize: 20.0 , color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 30.0,),
                  Container(
                      height: 45.0,
                      width: 270.0,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text('PAY',style: TextStyle(fontSize: 20.0 , color: Colors.white,fontWeight: FontWeight.bold))
                      )
                  )
                ],
              ),
              fallback: (context)=>CircularProgressIndicator(
                       color: primarySwatch,
                       strokeWidth: 5.0,
             ),

            )






          ],
        ),
      ),
    );
  }
}


//Column(
//                   children: [
//                     Text('${MainCubit.get(context).result!.code}',style: TextStyle(fontSize: 20.0 , color: Colors.white,fontWeight: FontWeight.bold),),
//                     Container(
//                       height: 40.0,
//                         width: 70.0,
//                         child: ElevatedButton(
//                             onPressed: (){},
//                             child: Text('PAY')
//                         )
//                     )
//                   ],
//                 ),

