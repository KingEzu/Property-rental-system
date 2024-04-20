import 'package:flutter/material.dart';

class wellcomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/2.jpg",
              height: 300,
            ),
            Container(
              margin: EdgeInsets.only(top: 1, bottom: 10),
              child: Text(
                "Wellcome To Property Rent",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                //pushreplacedNamed so it can not goes back to spalsh screen
                Navigator.pushReplacementNamed(context, "homePage");
              },
              //for animation on container
              child: Ink(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 130, vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.cyan,
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
