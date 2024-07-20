import'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body:
            Container(
                width: MediaQuery
                    .sizeOf(context)
                    .width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.3, 0.5, 1],
                      colors: [
                        Color(0xffFF4359),
                        Color(0xffAA1439),
                        Color(0xff68192F),
                        Color(0xff000000)
                      ],)
                ),

                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/profilepage.png',height: 140,),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Icon(Icons.circle,size:10,color: Colors.green,),
                              Text('Online',style: TextStyle(fontSize: 12,color:Color(0xffF4F3FC) ),)
                              ],
                            ),
                          ),
                         SizedBox(
                           width: 10,
                         ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                            ),
                            child: Center(child: Text('LV.78',style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF)),)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Julián',style: TextStyle(fontSize: 27,color: Color(0xffF4F3FC),)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('38',style: TextStyle(fontSize: 24,color: Color(0xffF6543E)),),
                              Text('Games',style: TextStyle(fontSize: 12,color: Color(0xffF4F3FC
                              )),)
                            ],
                          ),
                          Column(
                            children: [
                              Text('87.8K',style: TextStyle(fontSize: 24,color: Color(0xffF6543E)),),
                              Text('Earnings',style: TextStyle(fontSize: 12,color: Color(0xffF4F3FC
                              )),)
                            ],
                          ),
                          Column(
                            children: [
                              Text('526',style: TextStyle(fontSize: 24,color: Color(0xffF6543E)),),
                              Text('Following',style: TextStyle(fontSize: 12,color: Color(0xffF4F3FC
                              )),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.1,1],
                              colors: [
                                Color(0xff340a16),
                                Color(0xff000000),
                              ],)
                        ),
                        child:
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 250,
                                      child: DefaultTabController(
                                          length: 3, child:  TabBar(
                                          isScrollable: false,
                                          dividerColor: Colors.transparent,
                                          // overlayColor: WidgetStatePropertyAll(Colors.transparent),
                                          labelColor: Colors.white,
                                          unselectedLabelColor: Colors.grey,
                                          indicatorSize: TabBarIndicatorSize.tab,
                                          indicator:
                                          BoxDecoration(
                                            border: Border.all(color: Color(0xffF7B84B),),
                                            borderRadius: BorderRadius.circular(20),
                          
                                          ),
                                          tabs:
                                          [
                                            Tab(
                                              text: 'Games',
                                            ),
                                            Tab(
                                              text: ('Post'),
                                            ),
                                            Tab(
                                              text: 'About',
                                            ),
                          
                                          ]) ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 120,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: images.length,
                                    separatorBuilder: (BuildContext context, int index)=>SizedBox(width: 5,),
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          height: 110,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            image: DecorationImage(
                                              image: AssetImage(images[index]),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Acheivement',style: TextStyle(fontSize: 14,color: Color(0xffF4F3FC)),),
                                      SizedBox(
                                        width: 08,
                                      ),
                                      Text('(2)',style: TextStyle(fontSize: 14,color: Color(0xffF7B84B)),)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                  Image.asset('assets/icons/badge.png',height: 40,width: 40,),
                                  SizedBox(
                                    width:15
                                  ),
                                  Image.asset('assets/icons/Group.png',height: 40,width: 40,),
                                ],),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:10 ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Team',style: TextStyle(fontSize: 14,color: Color(0xffF4F3FC)),),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text('(6)',style: TextStyle(fontSize: 14,color: Color(0xffF7B84B)),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 80,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: screens.length,
                                    separatorBuilder: (BuildContext context, int index)=>SizedBox(width: 4,),
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            image: DecorationImage(
                                              image: AssetImage(screens[index]),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                                ],
                              ),
                ),
            )
        )
    );
  }
  List images = [
    'assets/images/league of legends.png',
    'assets/images/batman.png',
    'assets/images/fortnite.png',
    'assets/images/batman.png',
  ];

  List screens = [
    'assets/profile/one.png',
    'assets/profile/two.png',
    'assets/profile/three.png',
    'assets/profile/four.png',
    'assets/profile/five.png',
    'assets/profile/one.png',
    'assets/profile/three.png',

  ];

}
