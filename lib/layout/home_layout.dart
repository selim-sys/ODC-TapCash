import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class AppLayout extends  StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = MainCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: HexColor('444644'),
            selectedItemColor: primarySwatch,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            iconSize: 30.0,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            onTap: (index){
              cubit.changeBottomNavIndex(index);
            },
            currentIndex: cubit.currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon:Icon(Icons.dashboard,),
                  label: 'Dashboard'
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.credit_card_outlined,),
                  label: 'Smart Card'
              ),
              BottomNavigationBarItem(
                  icon:Icon(Icons.person,),
                  label: 'Profile'
              ),

            ],
          ),
        );
      },
    );
  }
}
