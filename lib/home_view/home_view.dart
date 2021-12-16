import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.pin),
                    Text(
                      '9 West 46 Th Street, New York City',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Color(0xffECF0F1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Color(0xffECF0F1))
                                  ),
                                child: Image.asset('assets/coffeecup.png'),
                              ),Text('Drink'),
                            ],),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 33,
                                  width: 40,
                                  color: Color(0xffECF0F1),
                                  child: Image.asset(
                                    'assets/burgerhome.png',
                                    color: Colors.black,
                                  ),
                                ),
                                Text('Food'),
                                Column(
                                  children: [
                                    Container(
                                      height: 33,
                                      width: 40,
                                      color: Color(0xffECF0F1),
                                      child: Image.asset(
                                        'assets/burgerhome.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text('Food'),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 100,
                            //   child: GridView(
                            //     scrollDirection: Axis.horizontal,
                            //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            //         maxCrossAxisExtent: 200, crossAxisSpacing: 40),
                            //     children: [
                            //       Container(
                            //       ),
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
    );
  }
}
