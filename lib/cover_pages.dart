import 'package:coffee_application/bottom_nav.dart';
import 'package:coffee_application/constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class CoverPages extends StatelessWidget {
  const CoverPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/coff.jpg'),fit: BoxFit.cover),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff000814), Color(0xff0d1b2a),Color(0xff000000)
            ]
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Gap(490),
                  Text("Fall In Love", style: myStyle(35, Colors.white, FontWeight.bold),),
                  Text("With Coffee all Over",style: myStyle(30, Colors.white, FontWeight.bold),),
                  Text("Again!",style: myStyle(30, Colors.white, FontWeight.bold),),
                ],
              ),
            ),
            Gap(20),
            Column(
              children: [
               Text("You can't buy happiness, but you can buy coffee,",style: myStyle(18, Colors.white, ),),
                Text("and that's pretty close.",style: myStyle(18, Colors.white, ),),
              ],
            ),
            Gap(10),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PracticeBottomNavBar()));
              },
              child: Card(
                  elevation: 6,
                  child: Container(
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff48c06),
                    ),
                    child: Center(child: Text("Enjoy Coffee",style: myStyle(23, Colors.white))),
                  )
              ),
            ),
          ],
        ),
      )
    );
  }
}
