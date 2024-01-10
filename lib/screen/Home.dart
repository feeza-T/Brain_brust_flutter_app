import 'package:brain_brust/screen/QuizIntro.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> assets = [
    'assets/images/Science.png',
    'assets/images/History.png',
    'assets/images/Geography.jpg',
    'assets/images/Sports.png',
    'assets/images/Entertainment.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz Categories',
        ),
        backgroundColor: Color(0xff2A1639),
        foregroundColor: Colors.white,
      ),
      drawer: SideNav(),
      body: SingleChildScrollView(
    child:Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        color: Colors.grey,
        child: Column(
          children: [
            CarouselSlider(
              items: assets.map((String imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 180,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(
                  milliseconds: 600,
                ),
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(height: 10),
            DotsIndicator(
              dotsCount: assets.length,
              position: _currentIndex.toDouble(),
              decorator: DotsDecorator(
                color: Colors.white,
                activeColor: Colors.black87,
                size: const Size.square(8.0),
                activeSize: const Size(20.0, 8.0),
                spacing: EdgeInsets.all(4.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                Flexible(
                  flex: 1,
                  fit:FlexFit.tight,
                  child:GestureDetector(
                 onTap: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>const QuizIntro())
                   );
                 },
                    child: Stack(
                                     children: [
                        Card(
                          elevation: 8,
                          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          child:Container(
                            height: 150,
                            child: Image.asset('assets/images/Science.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ),

                    ],
                    ),
                  ) ,
                ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                    child:Stack(
                      children: [
                        Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            child:Container(
                             height:150,
                              child: Image.asset('assets/images/Science.png',
                                fit: BoxFit.cover,
                              ),
                            )
                        ),
                        Positioned(
                          top:0,
                          bottom:0,
                          left:0,
                          right:0,
                          child: Container(color:Colors.black38),
                        ),
                        Padding(
                            padding: EdgeInsets.all(35),
                            child:Align(
                              alignment: Alignment.center,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.lock,size: 30,color: Colors.white,),
                                  Text("1000 points", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 14),),
                                  Text("ADVANCED", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)

                                ],
                              ),
                            )
                        ),
                      ],
                    ) ,
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>const QuizIntro())
                    );
                  },
                    child:Stack(
                      children: [
                        Card(
                            elevation: 8,
                            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            child:Container(
                                height: 150,
                              child: Image.asset('assets/images/History.png',
                                fit: BoxFit.cover,
                              ),
                            )
                        ),

                      ],
                    )
                    ) ,
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                    child:Stack(
                      children: [
                        Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            child:Container(
                                height:150,
                                child: Image.asset('assets/images/History.png',
                                fit: BoxFit.cover,
                                ),
                            ),
                        ),

                        Positioned(
                          top:0,
                          bottom:0,
                          left:0,
                          right:0,
                          child: Container(color:Colors.black38),
                        ),
                        Padding(
                            padding: EdgeInsets.all(35),
                            child:Align(
                              alignment: Alignment.center,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.lock,size: 30,color: Colors.white,),
                                  Text("1000 points", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 14),),
                                  Text("ADVANCED", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)

                                ],
                              ),
                            )
                        ),
                      ],
                    ) ,
                  ),


                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>const QuizIntro())
                    );
                  },
                    child:Stack(
                      children: [
                        Card(
                            elevation: 8,
                            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            child:Container(
                              height: 150,
                              child: Image.asset('assets/images/Geography.jpg',
                                fit: BoxFit.cover,
                              ),
                            )
                        ),

                      ],
                    )
                    ) ,
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                    child:Stack(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          child:Container(
                            height:150,
                            child: Image.asset('assets/images/Geography.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          top:0,
                          bottom:0,
                          left:0,
                          right:0,
                          child: Container(color:Colors.black38),
                        ),
                        Padding(
                            padding: EdgeInsets.all(35),
                            child:Align(
                              alignment: Alignment.center,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.lock,size: 30,color: Colors.white,),
                                  Text("1000 points", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 14),),
                                  Text("ADVANCED", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)

                                ],
                              ),
                            )
                        ),
                      ],
                    ) ,
                  )

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>const QuizIntro())
                    );
                  },
                    child:Stack(
                      children: [
                        Card(
                            elevation: 8,
                            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            child:Container(
                              height: 150,
                              child: Image.asset( 'assets/images/Sports.png',
                                fit: BoxFit.cover,
                              ),
                            )
                        ),

                      ],
                    )
                    ) ,
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                    child:Stack(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          child:Container(
                            height:150,
                            child: Image.asset( 'assets/images/Sports.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          top:0,
                          bottom:0,
                          left:0,
                          right:0,
                          child: Container(color:Colors.black38),
                        ),
                        Padding(
                            padding: EdgeInsets.all(35),
                            child:Align(
                              alignment: Alignment.center,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.lock,size: 30,color: Colors.white,),
                                  Text("1000 points", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 14),),
                                  Text("ADVANCED", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)

                                ],
                              ),
                            )
                        ),
                      ],
                    ) ,
                  )

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>const QuizIntro())
                    );
                  },
                    child:Stack(
                      children: [
                        Card(
                            elevation: 8,
                            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            child:Container(
                              height: 150,
                              child: Image.asset( 'assets/images/Entertainment.png',
                                fit: BoxFit.cover,
                              ),
                            )
                        ),

                      ],
                    )
                    ) ,
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                    child:Stack(
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          child:Container(
                            height:150,
                            child: Image.asset(  'assets/images/Entertainment.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          top:0,
                          bottom:0,
                          left:0,
                          right:0,
                          child: Container(color:Colors.black38),
                        ),
                        Padding(
                            padding: EdgeInsets.all(35),
                            child:Align(
                              alignment: Alignment.center,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.lock,size: 30,color: Colors.white,),
                                  Text("1000 points", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 14),),
                                  Text("ADVANCED", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)

                                ],
                              ),
                            )
                        ),
                      ],
                    ) ,
                  )

                ],
              ),
            )


          ],

        ),
      ),
    )
    );
  }
}