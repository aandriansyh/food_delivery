import 'package:flutter/material.dart';

class HomeTabView extends StatefulWidget {
  const HomeTabView({Key? key}) : super(key: key);

  @override
  _HomeTabViewState createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    fillColor: Color(0xffECF0F1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Icon(Icons.pin),
                    Text(
                      '9 West 46 Th Street, New York City',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Color(0xffECF0F1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Color(0xffECF0F1))),
                                child: Image.asset('assets/coffeecup.png'),
                              ),
                              Text('Drink')
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ), // Drink
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Color(0xffECF0F1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Color(0xffECF0F1))),
                                child: Image.asset(
                                  'assets/burgerhome.png',
                                  color: Colors.black,
                                ),
                              ),
                              Text('Food')
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ), // Food
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Color(0xffECF0F1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Color(0xffECF0F1))),
                                child: Image.asset('assets/cakehome.png'),
                              ),
                              Text('Cake')
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ), // Cake
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Color(0xffECF0F1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Color(0xffECF0F1))),
                                child: Image.asset('assets/snackhome.png'),
                              ),
                              Text('Snack'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Food Menu',
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                alignment: Alignment.centerRight),
                            onPressed: () {},
                            child: Text(
                              'View All',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Color(0xff3498DB)
                                                .withOpacity(0.3),
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xff3498DB)
                                                    .withOpacity(0.3)),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/burgerfoodlist.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8),
                                          child: Text(
                                            'Burgers',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Color(0xff9B59B6)
                                                .withOpacity(0.3),
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xff9B59B6)
                                                    .withOpacity(0.3)),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/fruits_home.png'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8),
                                          child: Text(
                                            'Fruit',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Color(0xff9B59B6)
                                                .withOpacity(0.3),
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xff9B59B6)
                                                    .withOpacity(0.3)),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/pizza_home.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8),
                                          child: Text(
                                            'Pizza',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Color(0xff3498DB)
                                                .withOpacity(0.3),
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xff3498DB)
                                                    .withOpacity(0.3)),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/sushi_home.png'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8),
                                          child: Text(
                                            'Sushi',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Color(0xff3498DB)
                                                .withOpacity(0.3),
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xff3498DB)
                                                    .withOpacity(0.3)),
                                            image: DecorationImage(
                                              alignment: Alignment.centerRight,
                                              image: AssetImage(
                                                  'assets/bbq_home.png'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8),
                                          child: Text(
                                            'BBQ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color: Color(0xff9B59B6)
                                                .withOpacity(0.3),
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Color(0xff9B59B6)
                                                    .withOpacity(0.3)),
                                            image: DecorationImage(
                                              alignment: Alignment.centerRight,
                                              image: AssetImage(
                                                  'assets/noodles_home.png'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8),
                                          child: Text(
                                            'Noodles',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            'Near Me',
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                alignment: Alignment.centerRight),
                            onPressed: () {},
                            child: Text(
                              'View All',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/dapoerijah_home.png'))),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Dapur Ijah Restaurant',
                                style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                                textAlign: TextAlign.start,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(Icons.pin_drop),
                                  Text('13 th Street, 46 W 12th St, NY', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),
                                    textAlign: TextAlign.start,),
                                ],
                              ),
                            ),
                            Padding(padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(Icons.lock_clock),
                                  Text('3 min - 1.1 km', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),
                                    textAlign: TextAlign.start,),
                                ],
                              ),),
                            Padding(padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Color(0xffFFC107),),
                                  Icon(Icons.star, color: Color(0xffFFC107),),
                                  Icon(Icons.star, color: Color(0xffFFC107),),
                                  Icon(Icons.star, color: Color(0xffFFC107),),
                                  Icon(Icons.star, color: Color(0xffFFC107),),
                                ],
                              ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

