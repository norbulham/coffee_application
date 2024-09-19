import 'package:coffee_application/constant.dart';
import 'package:coffee_application/data/cofdetail_list.dart';
import 'package:coffee_application/pages/details_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
class CoffeeDetailPage extends StatefulWidget {
  const CoffeeDetailPage({super.key});

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPageState();
}

class _CoffeeDetailPageState extends State<CoffeeDetailPage> {
  int selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        height: 770,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff001219), Color(0xff212529),Color(0xffffffff),Color(0xffffffff),])
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Location",style: myStyle(16, Colors.grey)),
                     Row(
                       children: [
                         Text("Babena, Thimphu",style: myStyle(18, Colors.white)),
                         Gap(5),
                         Icon(Icons.expand_more_outlined, size: 23,color: Colors.white,)
                       ],
                     ),
                   ],
                 ),
                ],
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Coffee',
                          hintStyle: GoogleFonts.oleoScript(fontSize: 18, color: Colors.white),
                          prefixIcon: IconButton(
                            icon: Icon(Icons.search, color: Colors.redAccent,),
                            onPressed: () {
                              // Handle search button press
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 45,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor
                        ),
                        child: Icon(Icons.sync_alt, color: Colors.white,),
                      )
                    ],
                  )
                ],
              ),
              Gap(30),
              Container(
                width: MediaQuery.of(context).size.width*0.89,
                height: MediaQuery.of(context).size.height*0.2,
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      right: -10,
                      child: Container(
                          height: 170,
                          width: 200,
                          child: Image.asset('assets/images/coffie-removebg-preview.png',fit: BoxFit.cover,),),
                    ),
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red.withOpacity(0.6)
                              ),
                              child: Center(child: Text('Promo', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold,)))
                          ),
                          SizedBox(height: 20), // Space between text
                          Container(
                              height: MediaQuery.of(context).size.height*0.04,
                              width: MediaQuery.of(context).size.width*0.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black54
                              ),
                              child: Center(child:
                              Text('Buy one get', style: myStyle(25, Colors.white, FontWeight.bold),))
                          ),SizedBox(height: 15), // Space between text
                          Container(
                              height: MediaQuery.of(context).size.height*0.04,
                              width: MediaQuery.of(context).size.width*0.34,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black54
                              ),
                              child: Center(child: Text('none FREE', style: myStyle(25, Colors.white, FontWeight.bold),))
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),Gap(15),
              SizedBox(
                height: 50,
                 child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allcofname.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      bool isSelected = index == selectedIndex;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 120,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isSelected
                                ? Colors.orange.withOpacity(0.7) // Color when selected
                                : Colors.white.withOpacity(0.6), // Color when not selected
                          ),
                          child: Center(
                              child: Text("${allcofname[index].coffeeName}", style: myStyle(19,isSelected ? Colors.white : Colors.black, FontWeight.bold),
                              )
                          ),
                        ),
                      );
                    }
                    ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: alldata.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.78
                ),
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DetailsPages()));
                    },
                    child: Card(
                      // elevation: 4,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 120,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("${alldata[index].imgURL}"),fit: BoxFit.cover),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: Colors.yellow,),
                                Text("${alldata[index].rating}", style: myStyle(18, Colors.white, FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(width: 6,),
                              Text("${alldata[index].name}", style: myStyle(20, Colors.black, FontWeight.bold), textAlign: TextAlign.start,),
                              Text("${alldata[index].name}", style: myStyle(15, Colors.black, FontWeight.bold), textAlign: TextAlign.start),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$${alldata[index].price}", style: myStyle(16, Colors.black, FontWeight.bold), textAlign: TextAlign.start,),
                                  SizedBox(width: 10),
                                  Icon(Icons.add_box_rounded, color: primaryColor, size: 30,),
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  );
                },
              )



            ],
          ),
        ),
      ),
    );
  }
}
