import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkez/Screens/Home.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedSplashScreen(
              nextScreen: Home(),
              animationDuration: Duration(seconds: 1),
              splash: Image.asset(
                "assets/images/ambulance.png",
                height: 600,
                width: 100,
                fit: BoxFit.cover,
              ),
              backgroundColor: Colors.red[900],
              splashTransition: SplashTransition.scaleTransition,
              pageTransitionType: PageTransitionType.rightToLeft,
            ),
            AnimatedPositioned(
              curve: Curves.bounceIn,
              bottom: 50,
              right: 30,
              left: 90,
              top: 440,
              duration: Duration(seconds: 2),
              child: Text(
                'MONKIZ',
                style: GoogleFonts.orbitron(
                    fontSize: 30, color: Colors.white, letterSpacing: 15),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.37)
                  .add(EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.63)),
              child: Opacity(
                opacity: 0.3,
                child: Text(
                  'Stay Safe',
                  style: GoogleFonts.orbitron(
                    fontSize: 18,
                    color: Colors.white,
                    wordSpacing: 3,
                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
