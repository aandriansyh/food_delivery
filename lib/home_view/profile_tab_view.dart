import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/home_view/home_view.dart';

class ProfileTabView extends StatelessWidget {
  const ProfileTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget profileSetting({
      required String profileMenu,
      required Function route,
    }) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    profileMenu,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => route(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shadowColor: MaterialStateProperty.all(Colors.white),
                          elevation: MaterialStateProperty.all(0),
                          alignment: Alignment.centerRight),
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      )),
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/profilephoto.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Itoh',
                style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '+1 11229382748',
                style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('My Profile'),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                    ), // My Profile
                    ListTile(
                      title: const Text('Change Password'),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                    ), // Change Password
                    ListTile(
                      title: const Text('Payment Setting'),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                    ), // Payment Setting
                    ListTile(
                      title: const Text('My Vouchers'),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                    ), // My Vouchers
                    ListTile(
                      title: const Text('Notification'),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                    ), // Notification
                    ListTile(
                      title: const Text('About Us'),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                    ), // About Us
                    ListTile(
                      title: const Text('Contact Us'),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ),
                        );
                      },
                    ), // Contact Us
                  ],
                ),
              ),
              // profileSetting(
              //   profileMenu: 'test menu',
              //   route: HomeView(),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
