import 'package:flutter/material.dart';
import 'package:food_delivery/home_view/home_tab_view.dart';
import 'package:food_delivery/home_view/mylist_tab_view.dart';
import 'package:food_delivery/home_view/order_tab_view.dart';
import 'package:food_delivery/home_view/profile_tab_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabViewController;
  void _onItemTapped(int index) {
    setState(() {
      _tabViewController.animateTo(index);
    });
  }

  List<Widget> _tabView = <Widget>[
    HomeTabView(),
    OrderTabView(),
    MylistTabView(),
    ProfileTabView(),
  ];


  @override
  void initState() {
    _tabViewController = TabController(length: _tabView.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: _tabView,
        controller: _tabViewController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'My List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _tabViewController.index,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xffD35400),
        unselectedItemColor: Color(0xff000000).withOpacity(0.5),
        iconSize: 20,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
