import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _AppBar(),
            _Logo(),
            _Mensaje(),
            SizedBox(height: 20),
            _Buttons(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.add_to_home_screen, size: 30),
          SizedBox(width: 10),
          Text('SALES TOP',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: SvgPicture.asset('img/coding.svg'),
    );
  }
}

class _Mensaje extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Hello!',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Welcome to Sales TOP A Platform To Manage Real State Needs.',
            style: TextStyle(color: Colors.black26, letterSpacing: 1.5),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _Button(
                width: 150.0,
                height: 50.0,
                color: Color(0xff1565C0),
                text: 'Login',
              ),
              _Button(
                width: 150,
                height: 50,
                color: Colors.white,
                text: 'Sign Up',
                colorText: Colors.black,
                border: true,
              ),
            ],
          ),
          SizedBox(height: 50),
          Text('Or via social media', style: TextStyle(color: Colors.black54)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Button(
                  width: 40, height: 40, color: Color(0xff2f7fd7), text: 'F'),
              SizedBox(width: 10),
              _Button(
                  width: 40, height: 40, color: Color(0xffd72f2f), text: 'G'),
              SizedBox(width: 10),
              _Button(
                  width: 40, height: 40, color: Color(0xff01264e), text: 'in'),
            ],
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final String? text;
  final Color colorText;
  final bool border;

  _Button({
    this.width = 150.0,
    this.height = 50.0,
    this.color,
    this.text,
    this.colorText = Colors.white,
    this.border = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(child: Text(text!, style: _style(colorText))),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
        border: (border)
            ? Border.all(width: 1.0)
            : Border.all(color: Colors.transparent),
      ),
    );
  }

  TextStyle _style(colorText) {
    return TextStyle(color: colorText, fontWeight: FontWeight.bold);
  }
}
