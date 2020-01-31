import 'package:flutter/material.dart';
import 'package:loginanimation/Animation/FadeAnimation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 360,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/background.png'),
                      fit: BoxFit.fill)),
              // membuat bertumpuk
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    width: 80,
                    height: 200,
                    child: FadeAnimation(1,Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/light-1.png'))),
                    )),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(1.3,Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/light-2.png'))),
                    )),
                  ),
                  Positioned(
                    right: 40,
                    top: 30,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(1.5,Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/clock.png'))),
                    )),
                  ),
                  Positioned(
                    child: FadeAnimation(1.6,Container(
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 30, right: 30),
              child: Column(
                children: <Widget>[
                  FadeAnimation(1.7,Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(142, 148, 251, 1.0),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[100]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email of phone number",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400])),
                            )),
                        Container(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[100]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ))
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(143, 148, 251, 1)
                        ])),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(2.0,Text(
                    "Forgot password",
                    style: TextStyle(
                        color: Color.fromRGBO(143, 148, 251, 1), fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
