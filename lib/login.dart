import 'package:flutter/material.dart';
import 'package:quiz__app/start_the_quiz.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          cont_lightpink(height, width),
          cont2_pink300(height),
          Column(
            children: [
              text(height),
              SizedBox(
                height: 10,
              ),
              image(),
              SizedBox(
                height: 10,
              ),
              text2(height),
              SizedBox(
                height: 20,
              ),
              Container(
                width: width * .6,
                child: TextField(
                  style: TextStyle(color: Colors.pink),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    focusColor: Colors.pink,
                    enabled: true,
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.pink),
                    hintStyle: TextStyle(color: Colors.pink),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pink)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: width * .6,
                child: TextField(
                  style: TextStyle(color: Colors.pink),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    focusColor: Colors.pink,
                    enabled: true,
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.pink),
                    hintStyle: TextStyle(color: Colors.pink),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pink)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => start_quiz()));
                },
                child: Container(
                  width: width * .4,
                  height: height * .09,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'LogIn',
                      style: TextStyle(
                          color: Colors.white, fontSize: height * .04),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text text2(double height) {
    return Text(
      'LogIn',
      style: TextStyle(fontSize: height * .04, color: Colors.pink),
    );
  }

  Text text(double height) {
    return Text(
      'Welcome to Quiz App',
      style: TextStyle(fontSize: height * .05, color: Colors.white),
    );
  }

  Widget image() {
    return Positioned(
      top: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/image/quiz.jpg',
        ),
      ),
    );
  }

  Widget cont2_pink300(double height) {
    return Container(
      height: height * .3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.pink[300],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
    );
  }

  Widget cont_lightpink(double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: Colors.pink[100]),
    );
  }
}
