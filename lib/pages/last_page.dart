import 'package:coffee_application/constant.dart';
import 'package:coffee_application/pages/order_pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {

  bool _isClicked = false;
  bool _ischanged = false;
  bool _isthird = false;
  bool _isforth = false;

  void _toggleColor() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }
  void _mycolor() {
    setState(() {
      _ischanged = !_ischanged;
    });
  }void _mythirdcolor() {
    setState(() {
      _isthird = !_isthird;
    });
  }void _myforthcolor() {
    setState(() {
      _isforth = !_isforth;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 460,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/location.jpg"))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 320),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54, width: 2)
                  ),
                  child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>OrderPages()));
                      },
                      child: Center(child: Icon(Icons.arrow_back_ios,))),
                ),Container(
                  margin: EdgeInsets.only(bottom: 320),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54, width: 2)
                  ),child: Center(child: Icon(Icons.my_location_rounded, size: 30,)),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width*1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffedede9)
                ),
                child: Column(
                  children: [
                    Gap(20),
                    Text("10 minutes left",style: myStyle(21, Colors.black,FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Delivery to ",style: myStyle(20, Colors.black54,FontWeight.bold)),
                        Text("Norbu Lhamo",style: myStyle(19, Colors.black,FontWeight.bold)),
                      ],
                    ),Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: _toggleColor ,
                          child: Container(
                            height: 6,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: _isClicked ? Colors.grey : Color(0xff3c6e71),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: _mycolor ,
                          child: Container(
                            height: 6,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: _ischanged ? Colors.grey : Color(0xff3c6e71),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: _mythirdcolor ,
                          child: Container(
                            height: 6,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: _isthird ? Colors.grey : Color(0xff3c6e71),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: _myforthcolor ,
                          child: Container(
                            height: 6,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: _isforth ? Colors.grey : Color(0xff3c6e71),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width*0.93,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(right: 70),
                              height: 60,
                              width: MediaQuery.of(context).size.width*0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Icon(Icons.wheelchair_pickup, color: Colors.deepOrange,size: 35,),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 60,top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Delivered your Order",style: myStyle(18, Colors.black,FontWeight.bold)),
                                  Text("We will send the goods to you",style: myStyle(16, Colors.black54,)),
                                  Text("as soon as possible.",style: myStyle(16, Colors.black54,)),
                                ],
                              ),
                            )
                          ],
                        )
                    ),Gap(20),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          child: Column(
                            children: [
                              Text("Brooklyn Simmons",style: myStyle(18, Colors.black,FontWeight.bold)),
                              Text("Personal Counrler",style: myStyle(16, Colors.black54,)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70),
                          height: 50,
                          width: MediaQuery.of(context).size.width*0.14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                          ),
                          child: Icon(Icons.wifi_calling_3_outlined, color: Colors.black,size: 35,),
                        ),
                      ],
                    )
                  ],
                ),
              )
          )
        ],
      ),

    );
  }
}
