import 'package:flutter/material.dart';
import 'package:hazinaMobile/Screens/login_screen.dart';
import 'package:hazinaMobile/Sub Screens/Welcome/components/background.dart';
import 'package:hazinaMobile/Sub Screens/Others/components/rounded_button.dart';
import 'package:hazinaMobile/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOME TO HAZINA SACCO M-BANKING",
              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Brand Bold"),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/icons/chat.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
