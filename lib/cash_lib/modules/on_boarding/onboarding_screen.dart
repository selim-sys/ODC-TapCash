import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/login_screen.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';


class BoardingModel
{
final String image;
final String title;
final String body;

BoardingModel({
  required this.image,
  required this.title,
  required this.body,
});

}

class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  bool isLast = false;

List<BoardingModel>boarding=[
  BoardingModel(
      image: 'images/Group 21.png',
      title: 'Title1',
      body: 'Body1',
  ),
  BoardingModel(
    image: 'images/Group 25.png',
    title: 'Title2',
    body: 'Body2',
  ),
  BoardingModel(
    image: 'images/Group 27.png',
    title: 'Title3',
    body: 'Body3',
  ),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('303131'),
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: ()
              {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Text('Skip',style: TextStyle(color: Colors.white,fontSize: 16),)
          )

        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index)
                {
                  if(index==boarding.length-1)
                    {
                      setState(() {
                        isLast=true;
                      });
                    }else
                      {
                        setState(() {
                          isLast=false;
                        });
                      }
                },
                controller: boardController,
                  itemBuilder: (context,index)=>buildOnBoardingItem(boarding[index]),
                  itemCount: 3,
              ),
            ),
            SizedBox(height:30.0 ),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: boardController,
                    count: 3,
                    effect:  JumpingDotEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                      spacing: 8,
                      activeDotColor: primarySwatch,
                    ),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: ()
                  {
                    if(isLast)
                    {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => RegisterScreen()));

                    }else
                      {
                        boardController.nextPage(
                            duration: const Duration(
                                milliseconds: 750
                            ),
                            curve:Curves.easeInOutCubicEmphasized
                        );
                      }
                  },
                  child: const Icon(Icons.arrow_forward_ios_outlined,)
                )
              ],
            ),
          ],
        ),
      )
    );
  }

  Widget buildOnBoardingItem(BoardingModel model)=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Image(
          image:AssetImage('${model.image}'),

        ),
      ),
      const SizedBox(height: 20.0),
    ],
  );
}
