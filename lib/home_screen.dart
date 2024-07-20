import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    'assets/images/First.jpg',
    'assets/images/third.jpg',
    'assets/images/second.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    body:
    Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1,0.3,0.5,1],
            colors: [Color(0xffFF4359),Color(0xffAA1439),Color(0xff68192F),Color(0xff000000)],        )
        ),
      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/images/profile.png',height: 60,width: 60,),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Monday',style: TextStyle(fontSize: 9,color: Colors.white),),
                      Text('Hi, Julián',style: TextStyle(fontSize: 24,color: Colors.white),)
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                    border:Border.all(width: 1,color: Color(0xffAA1439)),
                     shape: BoxShape.circle
                    ),
                    child: Center(child: Image.asset('assets/icons/menu.png',height: 20,width: 20,)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Play to Earn',style: TextStyle(fontSize: 35,color: Colors.white),),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   width: 250,
                   child: DefaultTabController(
                       length: 3, child:  TabBar(
                       isScrollable: true,
                     dividerColor: Colors.transparent,
                    // overlayColor: WidgetStatePropertyAll(Colors.transparent),
                       labelColor: Colors.white,
                       unselectedLabelColor: Colors.grey,
                       indicatorColor: Colors.transparent,
                       tabs:
                   [
                     Tab(
                       text: 'Popular',
                     ),
                     Tab(
                       text: ('Newest'),
                     ),
                     Tab(
                       text: 'Recommended',
                     ),

                   ]) ),
                 ),
                 Spacer(),
                 Icon(Icons.search,color: Colors.white,),
               ],

             ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    CarouselSlider(items: imageList.map((e)=>
                        Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(64),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffAA1439),
                              blurRadius: 5.0,
                              offset: Offset(0.3,1),
                            ),
                          ],
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:AssetImage(e,)

                          )
                      ),
                    )
                    ).toList(),
                      options: CarouselOptions(
                        height: 320,
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),),

                    Positioned(
                      top: 285,
                      left: 65,
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff53192A
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 275,
                      left: 55,
                      child: Container(
                        child:
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hatching',style: TextStyle(fontSize: 16,color: Colors.white),),
                                  Text('Strategy Game',style: TextStyle(fontSize: 10,color: Colors.white,),),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_forward,color: Colors.white,),

                                ],)
                            ],
                          ),
                        ),
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff68192F),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    ),
    ),
    );
  }

}
