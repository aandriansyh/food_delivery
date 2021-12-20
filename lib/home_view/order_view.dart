import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _OrderViewState extends StatefulWidget {
  const _OrderViewState({Key? key}) : super(key: key);

  @override
  _OrderViewStateState createState() => _OrderViewStateState();
}

class _OrderViewStateState extends State<_OrderViewState> {
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
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/dapoerijah_home.png'))),
              ),
              Column(
                children: [
                  Text('Dogmie Jagong Tutung', style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),),
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text('999+', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),),
                      Icon(Icons.thumb_down_alt),
                      Text('93', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),),
                      Icon(Icons.thumb_up),
                      Icon(Icons.thumb_down_alt),
                    ],
                  ),
                  Text('99.99', style: TextStyle(fontSize: 14, fontFamily: 'Poppins', color: Color(0xff2ECC71)),),
                ],
              ),
            Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/dapoerijah_home.png'))),
              ),
              Column(
                children: [
                  Text('Dogmie Jagong Tutung', style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),),
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text('999+', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),),
                      Icon(Icons.thumb_down_alt),
                      Text('93', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),),
                      Icon(Icons.thumb_up),
                      Icon(Icons.thumb_down_alt),
                    ],
                  ),
                  Text('99.99', style: TextStyle(fontSize: 14, fontFamily: 'Poppins', color: Color(0xff2ECC71)),),
                ],
              ),
            Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/dapoerijah_home.png'))),
              ),
              Column(
                children: [
                  Text('Dogmie Jagong Tutung', style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),),
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text('999+', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),),
                      Icon(Icons.thumb_down_alt),
                      Text('93', style: TextStyle(fontFamily: 'Roboto', fontSize: 12),),
                      Icon(Icons.thumb_up),
                      Icon(Icons.thumb_down_alt),
                    ],
                  ),
                  Text('99.99', style: TextStyle(fontSize: 14, fontFamily: 'Poppins', color: Color(0xff2ECC71)),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
