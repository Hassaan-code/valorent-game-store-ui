import 'package:flutter/material.dart';
import'package:flutter_svg/flutter_svg.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body:
        SingleChildScrollView(
          child: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
              child:
              Column(
                children: [
                  SizedBox(
                    height: 380,
                    child: Stack(
                      children:[
                        Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset('assets/images/dragon.png'),
                        ),
                      ),
                        Positioned(
                          top: 320,
                          left: 52,
                          child: Container(
                            height: 60,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff53192A),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 300,
                          left: 32,
                          child:  Container(
                            height: 65,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff68192F
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 49,
                                  width: 49,
                                  decoration:BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(child: Image.asset('assets/icons/bitcoin.png',height: 32,width: 24,)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                VerticalDivider(
                                  indent: 7,
                                  endIndent:9,
                                  color: Color(0xffD9D9D9),
                                  thickness: 2,
                                ),
                                Container(
                                  height: 30,
                                  width: 70,
                                  decoration:BoxDecoration(
                                      color: Color(0xff53192A),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Image.asset('assets/icons/arrow.png',height: 5,),
                                      SizedBox(
                                          width:8
                                      ),
                                      Text('4,71%',style: TextStyle(color: Colors.orangeAccent),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Dragon City',style: TextStyle(fontSize: 33,color: Colors.white),),
                      Spacer(),
                      Image.asset('assets/icons/stars.png',height: 70,width: 70,),
                    ],
                  ),
                  Text('This game combines the excitement of hatching\n'
                      'dragons with strategic gameplay. Developed by\n'
                      'team of gaming experts, Dragon City lets be a\n'
                      'raise and train their own dragons, while battling\n'
                      'against other players from around the world.',style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,),
               SizedBox(
                 height: 55,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 
                 children: [
                 Container(
                   height: 49,
                   width: 49,
                   decoration:BoxDecoration(
                       color: Color(0xff53192A),
                       borderRadius: BorderRadius.circular(15)
                   ),
                   child: Center(child: Icon(Icons.currency_bitcoin,color: Color(0xffF6543E),)),
                 ),
                 Column(
                   children: [
                     Text('BTC',style: TextStyle(fontSize: 14,color: Colors.white),),
                     Text('+1.6%',style: TextStyle(fontSize: 12,color: Color(0xff9DA3B7)),)
                   ],
                 ),
                 Image.asset('assets/icons/graph.png',height: 40,),
                Column(children: [
                  Text('\$29,850.15',style: TextStyle(color: Colors.white),),
                  Text('2.73BTC',style: TextStyle(color: Color(0xff9DA3B7)),)
                ],)
                 ],
               )
                ]
              ),
            ),
                )
            ),
          ),
        );
  }
}
