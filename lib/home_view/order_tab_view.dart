import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderTabView extends StatefulWidget {
  const OrderTabView({Key? key}) : super(key: key);

  @override
  _OrderTabViewState createState() => _OrderTabViewState();
}

  Widget order({
    required String image,
    required String productName,
    required String productPrice,
}) {
  return Container(
    child: Row(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                  child: Text(productName, style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.thumb_up_alt),
              Text('999+'),
              Icon(Icons.thumb_down_alt),
              Text('93+'),
            ],
          ),
          Text(productPrice, style: TextStyle(fontSize: 12, color: Colors.lightGreen),),
        Row(
          children: [
            Icon(Icons.thumb_up_alt), Icon(Icons.thumb_down_alt)
          ],
        ),],
      ),
  );
  }

class _OrderTabViewState extends State<OrderTabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Food'),
        foregroundColor: Colors.black,
        bottomOpacity: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 10),
        child: SingleChildScrollView(
          reverse: true,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                order(image: ('assets/dapoerijah_home.png'), productName: 'Dogmie Jagong Tutung', productPrice: "\$99.99"),
              order(image: ('assets/dapoerijah_home.png'), productName: 'Dogmie Jagong Tutung', productPrice: "\$99.99"),
              order(image: ('assets/dapoerijah_home.png'), productName: 'Dogmie Jagong Tutung', productPrice: "\$99.99"),
              ],
                ),
            ),
          ),
      ),
    );
  }
}
