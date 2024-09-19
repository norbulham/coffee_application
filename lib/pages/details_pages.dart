import 'package:coffee_application/constant.dart';
import 'package:coffee_application/pages/coffee_detail_page.dart';
import 'package:coffee_application/pages/order_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class DetailsPages extends StatefulWidget {
  const DetailsPages({super.key});

  @override
  State<DetailsPages> createState() => _DetailsPagesState();
}

class _DetailsPagesState extends State<DetailsPages> {
  bool _isFavorite = false;
  String selectedSize = "S";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        height: 790,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffffffff), Color(0xffffffff)])
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CoffeeDetailPage()));
                      },
                      child: Icon(Icons.arrow_back_ios_new, color:Colors.black,)
                  ),

                  Text("Details Page", style:myStyle(25, Colors.black, FontWeight.bold),),
                  IconButton(
                    icon: Icon(
                      _isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: _isFavorite ? Colors.red : Colors.grey,size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        _isFavorite = !_isFavorite; // Toggle the favorite state
                      });
                    },
                  )
                ],
              ),
              Gap(30),
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage("assets/images/americano.jpg"), fit: BoxFit.cover)
                ),
              ),
              Gap(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Americano Coffee", style: myStyle(25, Colors.black, FontWeight.bold), textAlign: TextAlign.start,),Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ice/Hot", style: myStyle(17, Colors.black54), textAlign: TextAlign.start),Gap(10),
                      Container(
                        margin: EdgeInsets.only(right: 120),
                          child: Icon(Icons.wheelchair_pickup, size: 26, color: primaryColor,))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: primaryColor.withOpacity(0.6),size: 28,),
                      Gap(5),
                      Text("4.8", style: myStyle(19, Colors.black, FontWeight.bold), textAlign: TextAlign.start,),Gap(5),
                      Text("(230)", style: myStyle(15, Colors.grey, FontWeight.bold), textAlign: TextAlign.start,),
                    ],
                  ),
                ],
              ),
              Divider(color: Colors.grey.withOpacity(0.4),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Description", style: myStyle(25, Colors.black, FontWeight.bold), textAlign: TextAlign.start,),Gap(10),
                  Text("$myPara", style: myStyle(17, Colors.black54), textAlign: TextAlign.start),Gap(10),
                  Text("Size", style: myStyle(23, Colors.black), textAlign: TextAlign.start),
                ],
              ),Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = "S"; // Set selected size to S
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectedSize == "S" ? Colors.orange : Colors.grey, width: 2.0,
                        ),
                      ),
                      child: Center(child: Text("S",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedSize == "S" ? Colors.orange : Colors.black,
                      ), textAlign: TextAlign.start,)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = "M";
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectedSize == "M" ? Colors.orange : Colors.grey, width: 2.0,
                        ),
                      ),
                      child: Center(child: Text("M",style: TextStyle(
                        fontWeight: FontWeight.bold, color: selectedSize == "M" ? Colors.orange : Colors.black,
                      ), textAlign: TextAlign.start,)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = "L";
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectedSize == "L" ? Colors.orange : Colors.grey,width: 2.0,
                        ),
                      ),
                      child: Center(child: Text("L",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedSize == "L" ? Colors.orange : Colors.black,), textAlign: TextAlign.start,)
                      ),
                    ),
                  ),
                ],
              ),Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Description", style: myStyle(17, Colors.black), textAlign: TextAlign.start,),
                      Text("\$4.43", style: myStyle(25, primaryColor), textAlign: TextAlign.start),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>OrderPages()));
                    },
                    child: Container(
                      height: 50,width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor
                      ),
                      child: Center(child: Text("Oder Now", style: myStyle(20, Colors.white,FontWeight.bold))
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
