import 'package:flutter/material.dart';

class MyAppBar {
  AppBar build() {
    return AppBar(
      title: Row(children: [
        Container(
          // width: 249,
          color: Colors.white,
          padding: EdgeInsets.all(30),
          child: SizedBox(
              height: 55,
              width: 188,
              child: Image.asset(
                'images/dark-469d22d42d796e1b56670f12f45a9a9a.jpg',
              )),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Auto finden',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Inzahlungnahme',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Auto verkaufen',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'So funktioniert’s',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Service',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Mein Konto',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ]),
    );
  }
}
