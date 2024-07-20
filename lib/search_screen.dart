import'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.sizeOf(context).height,
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
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Ethereum',style: TextStyle(fontSize: 16,color: Colors.white),),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/eth.png',height: 60,width: 60,),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('\$3,260.62',style: TextStyle(fontSize: 24,color: Colors.white),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                        Image.asset('assets/icons/arrow.png',height: 5,color: Color(0xff10DC78),),
                        SizedBox(
                            width:8
                        ),
                        Text('4,71%',style: TextStyle(color: Color(0xff10DC78)),),
                      ],
                    ),
                  )

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/chart.png',height: 155,width:350 ,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    child: DefaultTabController(
                        length: 5, child:  TabBar(
                        isScrollable: true,
                        dividerColor: Colors.transparent,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator:
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF5B300)
                        ),
                        tabs:
                        [
                          Tab(
                            text: '1D',
                          ),
                          Tab(
                            text: ('7D'),
                          ),
                          Tab(
                            text: '1M',
                          ),
                          Tab(
                            text: '1Y',
                          ),
                          Tab(
                            text: '5Y',
                          ),

                        ]) ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Market Cap',style: TextStyle(fontSize: 12,color: Color(0xffD6D7D8)),),
                        Text('\$387,992,058,833.42',style: TextStyle(fontSize: 16,color: Colors.white),),
                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/icons/arrow.png',height: 5,color: Color(0xff10DC78),),
                    SizedBox(
                        width:8
                    ),
                    Text('7 ,23%',style: TextStyle(color: Color(0xff10DC78)),)
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('All Time High',style: TextStyle(fontSize: 12,color: Color(0xffD6D7D8)),),
                        Text('\$4,891.70',style: TextStyle(fontSize: 16,color: Colors.white),),
                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/icons/arrow.png',height: 5,color: Color(0xffF15950),),
                    SizedBox(
                        width:8
                    ),
                    Text('33.42%',style: TextStyle(color: Color(0xffF15950)),)
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('All Time Low',style: TextStyle(fontSize: 12,color: Color(0xffD6D7D8)),),
                        Text('\$0.4209',style: TextStyle(fontSize: 16,color: Colors.white),),
                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/icons/arrow.png',height: 5,color: Color(0xff10DC78),),
                    SizedBox(
                        width:8
                    ),
                    Text('773717.23%',style: TextStyle(color: Color(0xff10DC78)),)
                  ],
                ),
              ),
            ],
          ),
            ),
      ),

    )
    );
  }
}
