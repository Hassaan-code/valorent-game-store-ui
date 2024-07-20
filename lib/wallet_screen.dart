import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height*1,
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
                    ],
                  )),
              child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('Pawz Wallet',style: TextStyle(fontSize: 24,color: Colors.white),),
                              Text('Withdrawals from \$100',style: TextStyle(fontSize: 12,color: Colors.grey),)
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 53,
                            width: 53,
                            decoration: BoxDecoration(
                                border:Border.all(width: 1,color: Color(0xffAA1439)),
                                shape: BoxShape.circle
                            ),
                            child: Center(child: Image.asset('assets/icons/menu.png',height: 20,width: 20,)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 228,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xff4f1d2b),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              Text('Total Coins',style: TextStyle(fontSize: 16,color: Color(0xffD6D7D8)),),SizedBox(height: 20,),
                              Text('\$7,273,291',style: TextStyle(fontSize: 24,color: Color(0xffFFFFFF)),),SizedBox(
                                height: 40,
                              ),
                              Text('Today’s Profit  ',style: TextStyle(fontSize: 16,color: Color(0xffD6D7D8)),),SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text('\$193,28',style: TextStyle(fontSize: 24,color: Color(0xffFFFFFF)),),
                                  Spacer(),
                                  Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD6F5F3),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Image.asset('assets/icons/arrow.png',height: 5,color: Colors.black,),
                                        SizedBox(
                                            width:8
                                        ),
                                        Text('2,41%',style: TextStyle(color: Colors.black),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text('My crypto',style: TextStyle(fontSize:16 , color: Colors.white,),),
                          Spacer(),
                          Text('see all',style: TextStyle(fontSize: 14,color: Color(0xffF6543E)),),
                          Icon(Icons.arrow_forward,color: Color(0xffF6543E),size: 14,),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 120,
                        child: ListView.separated(

                          shrinkWrap: true,
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: title.length,
                          separatorBuilder: (BuildContext context, int index)=>SizedBox(width: 5,),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 114,
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff68192F)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height:40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(images[index])
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20,),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(title[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                                              SizedBox(height: 7,),
                                              Text(subtitle[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),),
                                            ],
                                          ),
                                        ],
                                      ),
                                       SizedBox(height: 6,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(amount[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                                          Spacer(),
                                          Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xffF15950),size: 16,),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(percentage[index]),
                                        ],
                                      ),
                                    ],
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
                      Row(
                        children: [
                          Text('Trending List',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                          Spacer(),
                          Text('see all',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffF6543E)),),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.arrow_forward,size: 10,color: Color(0xffF6543E),)
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: title.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 70,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff68192F)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height:40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(images[index])
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(title[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                                            SizedBox(height: 7,),
                                            Text(subtitle[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xffF15950),size: 16,),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(value[index],style: TextStyle(color: Color(0xffF15950),),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),

                    ],
                  ),
                ),
              ),
                )
        ));
  }
  List title = [
    'BTC',
    'ETH',
  ];
  List subtitle = [
    'Bitcoin',
    'Ethereum',
  ];
  List amount = [
    '\$22,559',
    '\$24,209',
  ];
  List percentage = [
    '4,77%',
    '6,21%',
  ];
  List value = [
    '12,21%',
      '4,28',
  ];
  List images = [
    'assets/images/btc.png',
    'assets/images/eth.png',
  ];
}
