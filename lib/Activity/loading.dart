import 'package:ateendance_app/Activity/home.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override

  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assests/images/have_a_nice_day.png'),
                    // fit: BoxFit.cover, // Adjust the fit property as needed
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
              // width: 400,
              // height: 355,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assests/images/attendance_splash_pic.png'),
                  // fit: BoxFit.cover, // Adjust the fit property as needed
                ),
              ),
          ),
            )
          ]
        )

      ),
    );
  }
}
