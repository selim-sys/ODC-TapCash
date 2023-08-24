import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class PinFingerprint extends StatefulWidget {
  const PinFingerprint({Key? key}) : super(key: key);

  @override
  State<PinFingerprint> createState() => _PinFingerprintState();
}

class _PinFingerprintState extends State<PinFingerprint> {
  @override

  initState() {
    super.initState();
    MainCubit.get(context).authenticate(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('313131'),
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/output-onlinepngtools.png',
                color: primarySwatch,
              ),
              Spacer(),

              Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: ElevatedButton.icon(
                    onPressed: ()
                    {
                      MainCubit.get(context).authenticate(context);
                    },
                    icon: Icon(Icons.fingerprint,size: 30.0,),
                    label: Text('Use your fingerprint',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                      ),
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


