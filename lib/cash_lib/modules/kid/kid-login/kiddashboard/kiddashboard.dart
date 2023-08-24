import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-cubit.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/pay/qr_code/qr_code.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class KidDashboard extends StatelessWidget {
  KidDashboard({Key? key}) : super(key: key);

  List<IconData> catIcons=
  [
    Icons.fastfood,
    Icons.toys_outlined,
    Icons.watch,
    Icons.movie_creation_outlined,
    Icons.fastfood,
    Icons.toys_outlined,
    Icons.watch,
    Icons.movie_creation_outlined,
    Icons.fastfood,
    Icons.toys_outlined,
    Icons.watch,
    Icons.movie_creation_outlined,
    Icons.fastfood,
    Icons.toys_outlined,
    Icons.watch,
    Icons.movie_creation_outlined,

  ];

  List<String> catNames=
  [
    'Food',
    'Toys',
    'Clothes',
    'Cinema',
    'Food',
    'Toys',
    'Clothes',
    'Cinema',
    'Food',
    'Toys',
    'Clothes',
    'Cinema',
    'Food',
    'Toys',
    'Clothes',
    'Cinema',



  ];



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit,AppStates>
      (
      listener: (context,state){},
      builder: (context,state)=>Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: SizedBox(
          height: 70.0,
          width: 70.0,
          child: FloatingActionButton(
            onPressed: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QRScan()));},
            child: Icon(Icons.qr_code_scanner_outlined,size: 40.0,),

          ),
        ),
        backgroundColor: HexColor('313131'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20,vertical: 20 ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0,bottom: 30.0),
                  child: Center(
                    child: Container(
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
                              "EGP 20,000"),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Operations',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 25,
                      childAspectRatio: 1/0.98,
                      children: List.generate(16, (index) =>CategoryItem(categoryName: catNames[index], icon: catIcons[index],)
                        // )
                      )
                  ),
                ),
                SizedBox(height: 5,),
              ]
          ),

        ),


      ),
    );
  }
}


class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key,required this.icon,required this.categoryName}) : super(key: key);
  late IconData icon;
  late String categoryName;
  var pillNumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 80.0,
        width: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.teal,
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,size: 32.0,color: Colors.white,),
              SizedBox(height: 10.0,),
              Text(categoryName,style: TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
      onTap: ()
      {
        showModalBottomSheet(
            backgroundColor: HexColor('313131'),
            context: context,
            builder: (context) => Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                        controller: pillNumController,
                        style: TextStyle(color: primarySwatch),
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Please enter pill number";
                          }
                          else{
                            return null;
                          }
                        },
                        onTap: ()
                        {
                          MainCubit.get(context).label();
                        },
                        onSaved: (value) => pillNumController = value! as TextEditingController,
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
                          labelText: 'Pill number',
                          labelStyle: TextStyle(color: MainCubit.get(context).labelColor,fontSize: 16.0),
                        ),
                        cursorColor: primarySwatch
                    ),
                    SizedBox(height: 30.0),
                    Container(
                        height: 45.0,
                        width: 270.0,
                        child: ElevatedButton(
                            onPressed: (){},
                            child: Text('PAY',style: TextStyle(fontSize: 20.0 , color: Colors.white,fontWeight: FontWeight.bold))
                        )
                    )

                  ],),
              ),
            )
        );
      },
    );
  }
}

