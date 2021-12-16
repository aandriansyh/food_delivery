import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/home_view/home_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        bottomOpacity: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.white,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sign Up',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 24),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(fontFamily: 'Roboto', fontSize: 14),
                ),
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(fontFamily: 'Roboto', fontSize: 14),
                ),
                obscureText: true,
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'Re-enter Password',
                  hintStyle: TextStyle(fontFamily: 'Roboto', fontSize: 14),
                ),
                obscureText: true,
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontFamily: 'Poppins'),
                    primary: Color(0xffD35400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text('Sign Up')),
            ),
            SizedBox(
              height: 120,
            ),
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Divider dan Gambar
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(thickness: 2),
                        SizedBox(height: 2,),
                        Image.asset('assets/signinburger.png'),
                      ],
                    ),
                  ),
                  // Teks dan ikons
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Or Connect With',
                          style:
                          TextStyle(fontFamily: 'Roboto', fontSize: 14),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/facebook_icon.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/google_plus.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
